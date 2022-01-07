
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* pkey; } ;
struct TYPE_8__ {TYPE_1__* ameth; } ;
struct TYPE_7__ {int (* pkey_ctrl ) (TYPE_2__*,int ,int,TYPE_3__*) ;} ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ CMS_SignerInfo ;


 int ASN1_PKEY_CTRL_CMS_SIGN ;
 int CMS_F_CMS_SD_ASN1_CTRL ;
 int CMS_R_CTRL_FAILURE ;
 int CMS_R_NOT_SUPPORTED_FOR_THIS_KEY_TYPE ;
 int CMSerr (int ,int ) ;
 int stub1 (TYPE_2__*,int ,int,TYPE_3__*) ;

__attribute__((used)) static int cms_sd_asn1_ctrl(CMS_SignerInfo *si, int cmd)
{
    EVP_PKEY *pkey = si->pkey;
    int i;
    if (pkey->ameth == ((void*)0) || pkey->ameth->pkey_ctrl == ((void*)0))
        return 1;
    i = pkey->ameth->pkey_ctrl(pkey, ASN1_PKEY_CTRL_CMS_SIGN, cmd, si);
    if (i == -2) {
        CMSerr(CMS_F_CMS_SD_ASN1_CTRL, CMS_R_NOT_SUPPORTED_FOR_THIS_KEY_TYPE);
        return 0;
    }
    if (i <= 0) {
        CMSerr(CMS_F_CMS_SD_ASN1_CTRL, CMS_R_CTRL_FAILURE);
        return 0;
    }
    return 1;
}
