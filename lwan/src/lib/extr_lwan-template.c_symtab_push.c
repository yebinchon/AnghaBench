
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int hash; struct symtab* next; } ;
struct parser {struct symtab* symtab; } ;
struct lwan_var_descriptor {scalar_t__ name; } ;


 int ENODEV ;
 int ENOMEM ;
 int errno ;
 int free (struct symtab*) ;
 int hash_add (int ,scalar_t__,struct lwan_var_descriptor const*) ;
 int hash_free (int ) ;
 int hash_str_new (int *,int *) ;
 struct symtab* malloc (int) ;

__attribute__((used)) static int symtab_push(struct parser *parser,
                       const struct lwan_var_descriptor *descriptor)
{
    struct symtab *tab;
    int r;

    if (!descriptor)
        return -ENODEV;

    tab = malloc(sizeof(*tab));
    if (!tab)
        return -errno;

    tab->hash = hash_str_new(((void*)0), ((void*)0));
    if (!tab->hash) {
        r = -ENOMEM;
        goto hash_new_err;
    }

    tab->next = parser->symtab;
    parser->symtab = tab;

    for (; descriptor->name; descriptor++) {
        r = hash_add(parser->symtab->hash, descriptor->name, descriptor);

        if (r < 0)
            goto hash_add_err;
    }

    return 0;

hash_add_err:
    hash_free(tab->hash);
hash_new_err:
    free(tab);

    return r;
}
