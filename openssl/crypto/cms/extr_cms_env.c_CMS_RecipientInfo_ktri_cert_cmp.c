
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {TYPE_1__* ktri; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_5__ {int rid; } ;
typedef TYPE_3__ CMS_RecipientInfo ;


 int CMS_F_CMS_RECIPIENTINFO_KTRI_CERT_CMP ;
 scalar_t__ CMS_RECIPINFO_TRANS ;
 int CMS_R_NOT_KEY_TRANSPORT ;
 int CMSerr (int ,int ) ;
 int cms_SignerIdentifier_cert_cmp (int ,int *) ;

int CMS_RecipientInfo_ktri_cert_cmp(CMS_RecipientInfo *ri, X509 *cert)
{
    if (ri->type != CMS_RECIPINFO_TRANS) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KTRI_CERT_CMP,
               CMS_R_NOT_KEY_TRANSPORT);
        return -2;
    }
    return cms_SignerIdentifier_cert_cmp(ri->d.ktri->rid, cert);
}
