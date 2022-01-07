
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int hash; struct symtab* next; } ;
struct parser {struct symtab* symtab; } ;
struct lwan_var_descriptor {int dummy; } ;


 struct lwan_var_descriptor* hash_find (int ,char const*) ;

__attribute__((used)) static struct lwan_var_descriptor *symtab_lookup(struct parser *parser,
                                                 const char *var_name)
{
    for (struct symtab *tab = parser->symtab; tab; tab = tab->next) {
        struct lwan_var_descriptor *var = hash_find(tab->hash, var_name);
        if (var)
            return var;
    }

    return ((void*)0);
}
