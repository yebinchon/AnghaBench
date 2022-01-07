
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; int key; struct TYPE_4__* next; } ;
typedef TYPE_1__ KEY_LIST ;


 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void free_key_list(KEY_LIST *lst)
{
    while (lst != ((void*)0)) {
        KEY_LIST *next = lst->next;

        EVP_PKEY_free(lst->key);
        OPENSSL_free(lst->name);
        OPENSSL_free(lst);
        lst = next;
    }
}
