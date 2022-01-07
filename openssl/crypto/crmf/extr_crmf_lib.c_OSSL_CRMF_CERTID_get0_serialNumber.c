
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * serialNumber; } ;
typedef TYPE_1__ OSSL_CRMF_CERTID ;
typedef int ASN1_INTEGER ;



ASN1_INTEGER *OSSL_CRMF_CERTID_get0_serialNumber(const OSSL_CRMF_CERTID *cid)
{
    return cid != ((void*)0) ? cid->serialNumber : ((void*)0);
}
