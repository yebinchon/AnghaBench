#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct parser {int /*<<< orphan*/  items; int /*<<< orphan*/  strbuf; int /*<<< orphan*/  lexer; int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  value; } ;
struct lexeme {int type; TYPE_1__ value; } ;
struct config_line {int /*<<< orphan*/  key; int /*<<< orphan*/  value; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_LINE_TYPE_LINE ; 
#define  LEXEME_CLOSE_BRACKET 133 
#define  LEXEME_EQUAL 132 
#define  LEXEME_LINEFEED 131 
#define  LEXEME_STRING 130 
#define  LEXEME_VARIABLE 129 
#define  LEXEME_VARIABLE_DEFAULT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct config_line*) ; 
 struct lexeme* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct lexeme* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lexeme_type_str ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 void* parse_config ; 
 char* FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void *FUNC13(struct parser *parser)
{
    struct config_line line = {.type = CONFIG_LINE_TYPE_LINE};
    const struct lexeme *lexeme;
    size_t key_size;

    while ((lexeme = FUNC4(&parser->buffer))) {
        FUNC8(&parser->strbuf, lexeme->value.value,
                               lexeme->value.len);

        if (!FUNC3(&parser->buffer))
            FUNC7(&parser->strbuf, '_');
    }
    key_size = FUNC11(&parser->strbuf);
    FUNC7(&parser->strbuf, '\0');

    while ((lexeme = FUNC2(&parser->lexer))) {
        switch (lexeme->type) {
        case LEXEME_VARIABLE_DEFAULT:
        case LEXEME_VARIABLE: {
            const char *value;

            value = FUNC12(lexeme->value.value, lexeme->value.len);
            if (lexeme->type == LEXEME_VARIABLE) {
                if (!value) {
                    FUNC6(
                        "Variable '$%.*s' not defined in environment",
                        (int)lexeme->value.len, lexeme->value.value);
                    return NULL;
                } else {
                    FUNC9(&parser->strbuf, value);
                }
            } else {
                const struct lexeme *var_name = lexeme;

                if (!(lexeme = FUNC2(&parser->lexer))) {
                    FUNC6(
                        "Default value for variable '$%.*s' not given",
                        (int)var_name->value.len, var_name->value.value);
                    return NULL;
                }

                if (lexeme->type != LEXEME_STRING) {
                    FUNC6("Wrong format for default value");
                    return NULL;
                }

                if (!value) {
                    FUNC5(
                        "Using default value of '%.*s' for variable '${%.*s}'",
                        (int)lexeme->value.len, lexeme->value.value,
                        (int)var_name->value.len, var_name->value.value);
                    FUNC8(&parser->strbuf, lexeme->value.value,
                                           lexeme->value.len);
                } else {
                    FUNC9(&parser->strbuf, value);
                }
            }

            break;
        }

        case LEXEME_EQUAL:
            FUNC7(&parser->strbuf, '=');
            break;

        case LEXEME_STRING:
            FUNC8(&parser->strbuf, lexeme->value.value,
                                   lexeme->value.len);
            break;

        case LEXEME_CLOSE_BRACKET:
            FUNC0(&parser->lexer);
            /* fallthrough */

        case LEXEME_LINEFEED:
            line.key = FUNC10(&parser->strbuf);
            line.value = line.key + key_size + 1;
            return FUNC1(&parser->items, &line)
                       ? parse_config
                       : NULL;

        default:
            FUNC6("Unexpected token while parsing key-value: %s",
                              lexeme_type_str[lexeme->type]);
            return NULL;
        }
    }

    FUNC6("EOF while parsing key-value");
    return NULL;
}