
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_7__ {TYPE_2__* issuer; } ;
struct TYPE_5__ {int * directoryName; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ d; } ;
typedef TYPE_3__ OSSL_CRMF_CERTID ;


 scalar_t__ GEN_DIRNAME ;

X509_NAME *OSSL_CRMF_CERTID_get0_issuer(const OSSL_CRMF_CERTID *cid)
{
    return cid != ((void*)0) && cid->issuer->type == GEN_DIRNAME ?
        cid->issuer->d.directoryName : ((void*)0);
}
