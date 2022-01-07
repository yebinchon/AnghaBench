
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ NAMENUM_ENTRY ;


 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void namenum_free(NAMENUM_ENTRY *n)
{
    if (n != ((void*)0))
        OPENSSL_free(n->name);
    OPENSSL_free(n);
}
