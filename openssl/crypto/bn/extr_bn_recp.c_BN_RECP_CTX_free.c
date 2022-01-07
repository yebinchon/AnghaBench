
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int Nr; int N; } ;
typedef TYPE_1__ BN_RECP_CTX ;


 int BN_FLG_MALLOCED ;
 int BN_free (int *) ;
 int OPENSSL_free (TYPE_1__*) ;

void BN_RECP_CTX_free(BN_RECP_CTX *recp)
{
    if (recp == ((void*)0))
        return;
    BN_free(&recp->N);
    BN_free(&recp->Nr);
    if (recp->flags & BN_FLG_MALLOCED)
        OPENSSL_free(recp);
}
