
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_7__ {int rid; } ;
struct TYPE_5__ {TYPE_3__* ktri; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ d; } ;
typedef TYPE_2__ CMS_RecipientInfo ;
typedef TYPE_3__ CMS_KeyTransRecipientInfo ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_INTEGER ;


 int CMS_F_CMS_RECIPIENTINFO_KTRI_GET0_SIGNER_ID ;
 scalar_t__ CMS_RECIPINFO_TRANS ;
 int CMS_R_NOT_KEY_TRANSPORT ;
 int CMSerr (int ,int ) ;
 int cms_SignerIdentifier_get0_signer_id (int ,int **,int **,int **) ;

int CMS_RecipientInfo_ktri_get0_signer_id(CMS_RecipientInfo *ri,
                                          ASN1_OCTET_STRING **keyid,
                                          X509_NAME **issuer,
                                          ASN1_INTEGER **sno)
{
    CMS_KeyTransRecipientInfo *ktri;
    if (ri->type != CMS_RECIPINFO_TRANS) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KTRI_GET0_SIGNER_ID,
               CMS_R_NOT_KEY_TRANSPORT);
        return 0;
    }
    ktri = ri->d.ktri;

    return cms_SignerIdentifier_get0_signer_id(ktri->rid, keyid, issuer, sno);
}
