
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;


 scalar_t__ cms_signed_data_init (int *) ;

int CMS_SignedData_init(CMS_ContentInfo *cms)
{
    if (cms_signed_data_init(cms))
        return 1;
    else
        return 0;
}
