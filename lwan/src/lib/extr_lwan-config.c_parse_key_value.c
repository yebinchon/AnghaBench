
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {int items; int strbuf; int lexer; int buffer; } ;
struct TYPE_2__ {scalar_t__ len; int value; } ;
struct lexeme {int type; TYPE_1__ value; } ;
struct config_line {int key; int value; int type; } ;


 int CONFIG_LINE_TYPE_LINE ;






 int backup (int *) ;
 int config_ring_buffer_try_put (int *,struct config_line*) ;
 struct lexeme* lex_next (int *) ;
 int lexeme_ring_buffer_empty (int *) ;
 struct lexeme* lexeme_ring_buffer_get_ptr_or_null (int *) ;
 int * lexeme_type_str ;
 int lwan_status_debug (char*,int,int ,int,int ) ;
 int lwan_status_error (char*,...) ;
 int lwan_strbuf_append_char (int *,char) ;
 int lwan_strbuf_append_str (int *,int ,scalar_t__) ;
 int lwan_strbuf_append_strz (int *,char const*) ;
 int lwan_strbuf_get_buffer (int *) ;
 size_t lwan_strbuf_get_length (int *) ;
 void* parse_config ;
 char* secure_getenv_len (int ,scalar_t__) ;

__attribute__((used)) static void *parse_key_value(struct parser *parser)
{
    struct config_line line = {.type = CONFIG_LINE_TYPE_LINE};
    const struct lexeme *lexeme;
    size_t key_size;

    while ((lexeme = lexeme_ring_buffer_get_ptr_or_null(&parser->buffer))) {
        lwan_strbuf_append_str(&parser->strbuf, lexeme->value.value,
                               lexeme->value.len);

        if (!lexeme_ring_buffer_empty(&parser->buffer))
            lwan_strbuf_append_char(&parser->strbuf, '_');
    }
    key_size = lwan_strbuf_get_length(&parser->strbuf);
    lwan_strbuf_append_char(&parser->strbuf, '\0');

    while ((lexeme = lex_next(&parser->lexer))) {
        switch (lexeme->type) {
        case 128:
        case 129: {
            const char *value;

            value = secure_getenv_len(lexeme->value.value, lexeme->value.len);
            if (lexeme->type == 129) {
                if (!value) {
                    lwan_status_error(
                        "Variable '$%.*s' not defined in environment",
                        (int)lexeme->value.len, lexeme->value.value);
                    return ((void*)0);
                } else {
                    lwan_strbuf_append_strz(&parser->strbuf, value);
                }
            } else {
                const struct lexeme *var_name = lexeme;

                if (!(lexeme = lex_next(&parser->lexer))) {
                    lwan_status_error(
                        "Default value for variable '$%.*s' not given",
                        (int)var_name->value.len, var_name->value.value);
                    return ((void*)0);
                }

                if (lexeme->type != 130) {
                    lwan_status_error("Wrong format for default value");
                    return ((void*)0);
                }

                if (!value) {
                    lwan_status_debug(
                        "Using default value of '%.*s' for variable '${%.*s}'",
                        (int)lexeme->value.len, lexeme->value.value,
                        (int)var_name->value.len, var_name->value.value);
                    lwan_strbuf_append_str(&parser->strbuf, lexeme->value.value,
                                           lexeme->value.len);
                } else {
                    lwan_strbuf_append_strz(&parser->strbuf, value);
                }
            }

            break;
        }

        case 132:
            lwan_strbuf_append_char(&parser->strbuf, '=');
            break;

        case 130:
            lwan_strbuf_append_str(&parser->strbuf, lexeme->value.value,
                                   lexeme->value.len);
            break;

        case 133:
            backup(&parser->lexer);


        case 131:
            line.key = lwan_strbuf_get_buffer(&parser->strbuf);
            line.value = line.key + key_size + 1;
            return config_ring_buffer_try_put(&parser->items, &line)
                       ? parse_config
                       : ((void*)0);

        default:
            lwan_status_error("Unexpected token while parsing key-value: %s",
                              lexeme_type_str[lexeme->type]);
            return ((void*)0);
        }
    }

    lwan_status_error("EOF while parsing key-value");
    return ((void*)0);
}
