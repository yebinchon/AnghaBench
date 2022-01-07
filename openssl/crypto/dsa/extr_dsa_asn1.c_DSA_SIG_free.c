
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; int r; } ;
typedef TYPE_1__ DSA_SIG ;


 int BN_clear_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

void DSA_SIG_free(DSA_SIG *sig)
{
    if (sig == ((void*)0))
        return;
    BN_clear_free(sig->r);
    BN_clear_free(sig->s);
    OPENSSL_free(sig);
}
