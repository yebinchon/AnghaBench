
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef TYPE_1__ CMS_RecipientInfo ;
typedef int CMS_ContentInfo ;


 int CMS_F_CMS_RECIPIENTINFO_ENCRYPT ;




 int CMS_R_UNSUPPORTED_RECIPIENT_TYPE ;
 int CMSerr (int ,int ) ;
 int cms_RecipientInfo_kari_encrypt (int const*,TYPE_1__*) ;
 int cms_RecipientInfo_kekri_encrypt (int const*,TYPE_1__*) ;
 int cms_RecipientInfo_ktri_encrypt (int const*,TYPE_1__*) ;
 int cms_RecipientInfo_pwri_crypt (int const*,TYPE_1__*,int) ;

int CMS_RecipientInfo_encrypt(const CMS_ContentInfo *cms, CMS_RecipientInfo *ri)
{
    switch (ri->type) {
    case 128:
        return cms_RecipientInfo_ktri_encrypt(cms, ri);

    case 131:
        return cms_RecipientInfo_kari_encrypt(cms, ri);

    case 130:
        return cms_RecipientInfo_kekri_encrypt(cms, ri);

    case 129:
        return cms_RecipientInfo_pwri_crypt(cms, ri, 1);

    default:
        CMSerr(CMS_F_CMS_RECIPIENTINFO_ENCRYPT,
               CMS_R_UNSUPPORTED_RECIPIENT_TYPE);
        return 0;
    }
}
