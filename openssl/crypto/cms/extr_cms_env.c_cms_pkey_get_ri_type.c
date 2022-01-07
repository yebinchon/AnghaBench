
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int (* pkey_ctrl ) (TYPE_2__*,int ,int ,int*) ;} ;
typedef TYPE_2__ EVP_PKEY ;


 int ASN1_PKEY_CTRL_CMS_RI_TYPE ;
 int CMS_RECIPINFO_TRANS ;
 int stub1 (TYPE_2__*,int ,int ,int*) ;

int cms_pkey_get_ri_type(EVP_PKEY *pk)
{
    if (pk->ameth && pk->ameth->pkey_ctrl) {
        int i, r;
        i = pk->ameth->pkey_ctrl(pk, ASN1_PKEY_CTRL_CMS_RI_TYPE, 0, &r);
        if (i > 0)
            return r;
    }
    return CMS_RECIPINFO_TRANS;
}
