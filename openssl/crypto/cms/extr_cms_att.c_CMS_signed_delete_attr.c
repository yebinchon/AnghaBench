
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ATTRIBUTE ;
struct TYPE_3__ {int signedAttrs; } ;
typedef TYPE_1__ CMS_SignerInfo ;


 int * X509at_delete_attr (int ,int) ;

X509_ATTRIBUTE *CMS_signed_delete_attr(CMS_SignerInfo *si, int loc)
{
    return X509at_delete_attr(si->signedAttrs, loc);
}
