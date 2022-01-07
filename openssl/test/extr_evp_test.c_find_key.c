
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * key; int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ KEY_LIST ;
typedef int EVP_PKEY ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int find_key(EVP_PKEY **ppk, const char *name, KEY_LIST *lst)
{
    for (; lst != ((void*)0); lst = lst->next) {
        if (strcmp(lst->name, name) == 0) {
            if (ppk != ((void*)0))
                *ppk = lst->key;
            return 1;
        }
    }
    return 0;
}
