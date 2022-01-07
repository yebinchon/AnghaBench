
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_3__ {int sid; } ;
typedef TYPE_1__ CMS_SignerInfo ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_INTEGER ;


 int cms_SignerIdentifier_get0_signer_id (int ,int **,int **,int **) ;

int CMS_SignerInfo_get0_signer_id(CMS_SignerInfo *si,
                                  ASN1_OCTET_STRING **keyid,
                                  X509_NAME **issuer, ASN1_INTEGER **sno)
{
    return cms_SignerIdentifier_get0_signer_id(si->sid, keyid, issuer, sno);
}
