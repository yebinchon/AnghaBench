
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {struct symtab* next; int hash; } ;
struct parser {struct symtab* symtab; } ;


 int assert (struct symtab*) ;
 int free (struct symtab*) ;
 int hash_free (int ) ;

__attribute__((used)) static void symtab_pop(struct parser *parser)
{
    struct symtab *tab = parser->symtab;

    assert(tab);

    hash_free(tab->hash);
    parser->symtab = tab->next;
    free(tab);
}
