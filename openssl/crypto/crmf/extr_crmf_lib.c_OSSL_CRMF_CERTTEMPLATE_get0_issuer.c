
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_3__ {int * issuer; } ;
typedef TYPE_1__ OSSL_CRMF_CERTTEMPLATE ;



X509_NAME *OSSL_CRMF_CERTTEMPLATE_get0_issuer(OSSL_CRMF_CERTTEMPLATE *tmpl)
{
    return tmpl != ((void*)0) ? tmpl->issuer : ((void*)0);
}
