
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * serialNumber; } ;
typedef TYPE_1__ OSSL_CRMF_CERTTEMPLATE ;
typedef int ASN1_INTEGER ;



ASN1_INTEGER *OSSL_CRMF_CERTTEMPLATE_get0_serialNumber(OSSL_CRMF_CERTTEMPLATE *tmpl)
{
    return tmpl != ((void*)0) ? tmpl->serialNumber : ((void*)0);
}
