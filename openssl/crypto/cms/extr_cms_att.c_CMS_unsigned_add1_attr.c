
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ATTRIBUTE ;
struct TYPE_3__ {int unsignedAttrs; } ;
typedef TYPE_1__ CMS_SignerInfo ;


 scalar_t__ X509at_add1_attr (int *,int *) ;

int CMS_unsigned_add1_attr(CMS_SignerInfo *si, X509_ATTRIBUTE *attr)
{
    if (X509at_add1_attr(&si->unsignedAttrs, attr))
        return 1;
    return 0;
}
