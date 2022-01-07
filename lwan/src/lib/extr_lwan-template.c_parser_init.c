
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {int stack; int lexer; int chunks; TYPE_1__* tpl; } ;
struct lwan_var_descriptor {int dummy; } ;
struct TYPE_2__ {int chunks; } ;


 int chunk_array_init (int *) ;
 int lex_init (int *,char const*) ;
 int list_head_init (int *) ;
 scalar_t__ symtab_push (struct parser*,struct lwan_var_descriptor const*) ;

__attribute__((used)) static bool parser_init(struct parser *parser,
                        const struct lwan_var_descriptor *descriptor,
                        const char *string)
{
    if (symtab_push(parser, descriptor) < 0)
        return 0;

    chunk_array_init(&parser->chunks);
    parser->tpl->chunks = parser->chunks;

    lex_init(&parser->lexer, string);
    list_head_init(&parser->stack);

    return 1;
}
