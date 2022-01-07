
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ OSSL_METHOD_STORE ;


 int CRYPTO_THREAD_read_lock (int ) ;

int ossl_property_read_lock(OSSL_METHOD_STORE *p)
{
    return p != ((void*)0) ? CRYPTO_THREAD_read_lock(p->lock) : 0;
}
