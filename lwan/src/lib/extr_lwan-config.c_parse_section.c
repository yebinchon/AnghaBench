
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {int items; int strbuf; int buffer; } ;
struct TYPE_2__ {size_t len; int value; } ;
struct lexeme {TYPE_1__ value; } ;
struct config_line {int value; int key; int type; } ;


 int CONFIG_LINE_TYPE_SECTION ;
 scalar_t__ config_ring_buffer_try_put (int *,struct config_line*) ;
 int lexeme_ring_buffer_empty (int *) ;
 struct lexeme* lexeme_ring_buffer_get_ptr_or_null (int *) ;
 int lwan_strbuf_append_char (int *,char) ;
 int lwan_strbuf_append_str (int *,int ,size_t) ;
 int lwan_strbuf_get_buffer (int *) ;
 void* parse_config ;

__attribute__((used)) static void *parse_section(struct parser *parser)
{
    const struct lexeme *lexeme;
    size_t name_len;

    if (!(lexeme = lexeme_ring_buffer_get_ptr_or_null(&parser->buffer)))
        return ((void*)0);

    lwan_strbuf_append_str(&parser->strbuf, lexeme->value.value,
                           lexeme->value.len);
    name_len = lexeme->value.len;
    lwan_strbuf_append_char(&parser->strbuf, '\0');

    while ((lexeme = lexeme_ring_buffer_get_ptr_or_null(&parser->buffer))) {
        lwan_strbuf_append_str(&parser->strbuf, lexeme->value.value,
                               lexeme->value.len);

        if (!lexeme_ring_buffer_empty(&parser->buffer))
            lwan_strbuf_append_char(&parser->strbuf, ' ');
    }

    struct config_line line = {
        .type = CONFIG_LINE_TYPE_SECTION,
        .key = lwan_strbuf_get_buffer(&parser->strbuf),
        .value = lwan_strbuf_get_buffer(&parser->strbuf) + name_len + 1,
    };
    return config_ring_buffer_try_put(&parser->items, &line) ? parse_config
                                                             : ((void*)0);
}
