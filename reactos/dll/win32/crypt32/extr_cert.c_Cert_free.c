
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int context_t ;
struct TYPE_3__ {int pCertInfo; int pbCertEncoded; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;
typedef TYPE_2__ cert_t ;


 int CryptMemFree (int ) ;
 int LocalFree (int ) ;

__attribute__((used)) static void Cert_free(context_t *context)
{
    cert_t *cert = (cert_t*)context;

    CryptMemFree(cert->ctx.pbCertEncoded);
    LocalFree(cert->ctx.pCertInfo);
}
