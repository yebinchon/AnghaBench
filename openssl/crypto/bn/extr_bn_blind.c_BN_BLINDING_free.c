
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int mod; int e; int Ai; int A; } ;
typedef TYPE_1__ BN_BLINDING ;


 int BN_free (int ) ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

void BN_BLINDING_free(BN_BLINDING *r)
{
    if (r == ((void*)0))
        return;
    BN_free(r->A);
    BN_free(r->Ai);
    BN_free(r->e);
    BN_free(r->mod);
    CRYPTO_THREAD_lock_free(r->lock);
    OPENSSL_free(r);
}
