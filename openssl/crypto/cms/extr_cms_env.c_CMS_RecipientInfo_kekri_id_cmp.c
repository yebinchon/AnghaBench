
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {unsigned char* data; int length; scalar_t__ flags; int type; } ;
struct TYPE_11__ {TYPE_1__* kekid; } ;
struct TYPE_9__ {TYPE_4__* kekri; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_8__ {int keyIdentifier; } ;
typedef TYPE_3__ CMS_RecipientInfo ;
typedef TYPE_4__ CMS_KEKRecipientInfo ;
typedef TYPE_5__ ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_cmp (TYPE_5__*,int ) ;
 int CMS_F_CMS_RECIPIENTINFO_KEKRI_ID_CMP ;
 scalar_t__ CMS_RECIPINFO_KEK ;
 int CMS_R_NOT_KEK ;
 int CMSerr (int ,int ) ;
 int V_ASN1_OCTET_STRING ;

int CMS_RecipientInfo_kekri_id_cmp(CMS_RecipientInfo *ri,
                                   const unsigned char *id, size_t idlen)
{
    ASN1_OCTET_STRING tmp_os;
    CMS_KEKRecipientInfo *kekri;
    if (ri->type != CMS_RECIPINFO_KEK) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KEKRI_ID_CMP, CMS_R_NOT_KEK);
        return -2;
    }
    kekri = ri->d.kekri;
    tmp_os.type = V_ASN1_OCTET_STRING;
    tmp_os.flags = 0;
    tmp_os.data = (unsigned char *)id;
    tmp_os.length = (int)idlen;
    return ASN1_OCTET_STRING_cmp(&tmp_os, kekri->kekid->keyIdentifier);
}
