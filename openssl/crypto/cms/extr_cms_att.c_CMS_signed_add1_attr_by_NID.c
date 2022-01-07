
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signedAttrs; } ;
typedef TYPE_1__ CMS_SignerInfo ;


 scalar_t__ X509at_add1_attr_by_NID (int *,int,int,void const*,int) ;

int CMS_signed_add1_attr_by_NID(CMS_SignerInfo *si,
                                int nid, int type, const void *bytes, int len)
{
    if (X509at_add1_attr_by_NID(&si->signedAttrs, nid, type, bytes, len))
        return 1;
    return 0;
}
