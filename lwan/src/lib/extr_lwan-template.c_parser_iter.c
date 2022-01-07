
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {int flags; } ;
struct lwan_var_descriptor {int list_desc; } ;
struct TYPE_2__ {int value; scalar_t__ len; } ;
struct lexeme {scalar_t__ type; TYPE_1__ value; } ;
typedef enum flags { ____Placeholder_flags } flags ;


 int ACTION_START_ITER ;
 int ENODEV ;
 int FLAGS_NEGATE ;
 int FLAGS_NO_FREE ;
 scalar_t__ LEXEME_IDENTIFIER ;
 int emit_chunk (struct parser*,int ,int,struct lwan_var_descriptor*) ;
 void* error_lexeme (struct lexeme*,char*,...) ;
 int parser_push_lexeme (struct parser*,struct lexeme*) ;
 void* parser_right_meta ;
 struct lwan_var_descriptor* symtab_lookup_lexeme (struct parser*,struct lexeme*) ;
 int symtab_push (struct parser*,int ) ;
 void* unexpected_lexeme (struct lexeme*) ;

__attribute__((used)) static void *parser_iter(struct parser *parser, struct lexeme *lexeme)
{
    if (lexeme->type == LEXEME_IDENTIFIER) {
        enum flags negate = parser->flags & FLAGS_NEGATE;
        struct lwan_var_descriptor *symbol =
            symtab_lookup_lexeme(parser, lexeme);
        if (!symbol) {
            return error_lexeme(lexeme, "Unknown variable: %.*s",
                                (int)lexeme->value.len, lexeme->value.value);
        }

        int r = symtab_push(parser, symbol->list_desc);
        if (r < 0) {
            if (r == -ENODEV) {
                return error_lexeme(
                    lexeme, "Couldn't find descriptor for variable `%.*s'",
                    (int)lexeme->value.len, lexeme->value.value);
            }
            return error_lexeme(lexeme,
                                "Could not push symbol table (out of memory)");
        }

        emit_chunk(parser, ACTION_START_ITER, negate | FLAGS_NO_FREE, symbol);

        parser_push_lexeme(parser, lexeme);
        parser->flags &= ~FLAGS_NEGATE;
        return parser_right_meta;
    }

    return unexpected_lexeme(lexeme);
}
