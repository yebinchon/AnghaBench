
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int template_flags; int lexer; struct lwan_var_descriptor const* descriptor; int * symtab; struct lwan_tpl* tpl; } ;
struct lwan_var_descriptor {int dummy; } ;
struct lwan_tpl {int dummy; } ;
typedef struct lexeme lexeme ;
typedef enum lwan_tpl_flag { ____Placeholder_lwan_tpl_flag } lwan_tpl_flag ;


 struct lexeme* lex_next (int *) ;
 int parser_init (struct parser*,struct lwan_var_descriptor const*,char const*) ;
 int parser_shutdown (struct parser*,struct lexeme*) ;
 void* parser_text (struct parser*,struct lexeme*) ;

__attribute__((used)) static bool parse_string(struct lwan_tpl *tpl,
                         const char *string,
                         const struct lwan_var_descriptor *descriptor,
                         enum lwan_tpl_flag flags)
{
    struct parser parser = {
        .tpl = tpl,
        .symtab = ((void*)0),
        .descriptor = descriptor,
        .template_flags = flags
    };
    void *(*state)(struct parser *parser, struct lexeme *lexeme) = parser_text;
    struct lexeme *lexeme;

    if (!parser_init(&parser, descriptor, string))
        return 0;

    while (state) {
        if (!(lexeme = lex_next(&parser.lexer)))
            break;

        state = state(&parser, lexeme);
    }

    return parser_shutdown(&parser, lexeme);
}
