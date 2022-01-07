
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int max; int * data; } ;
typedef TYPE_1__ BUF_MEM ;


 int BUF_MEM_FLAG_SECURE ;
 int OPENSSL_clear_free (int *,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int OPENSSL_secure_clear_free (int *,int ) ;

void BUF_MEM_free(BUF_MEM *a)
{
    if (a == ((void*)0))
        return;
    if (a->data != ((void*)0)) {
        if (a->flags & BUF_MEM_FLAG_SECURE)
            OPENSSL_secure_clear_free(a->data, a->max);
        else
            OPENSSL_clear_free(a->data, a->max);
    }
    OPENSSL_free(a);
}
