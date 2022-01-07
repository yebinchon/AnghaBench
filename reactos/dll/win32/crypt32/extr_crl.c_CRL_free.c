
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pCrlInfo; int pbCrlEncoded; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;
typedef TYPE_2__ crl_t ;
typedef int context_t ;


 int CryptMemFree (int ) ;
 int LocalFree (int ) ;

__attribute__((used)) static void CRL_free(context_t *context)
{
    crl_t *crl = (crl_t*)context;

    CryptMemFree(crl->ctx.pbCrlEncoded);
    LocalFree(crl->ctx.pCrlInfo);
}
