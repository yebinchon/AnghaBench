
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signedAttrs; } ;
typedef TYPE_1__ CMS_SignerInfo ;


 int X509at_get_attr_by_NID (int ,int,int) ;

int CMS_signed_get_attr_by_NID(const CMS_SignerInfo *si, int nid, int lastpos)
{
    return X509at_get_attr_by_NID(si->signedAttrs, nid, lastpos);
}
