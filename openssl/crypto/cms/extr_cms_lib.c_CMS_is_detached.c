
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int ASN1_OCTET_STRING ;


 int ** CMS_get0_content (int *) ;

int CMS_is_detached(CMS_ContentInfo *cms)
{
    ASN1_OCTET_STRING **pos;

    pos = CMS_get0_content(cms);
    if (pos == ((void*)0))
        return -1;
    if (*pos != ((void*)0))
        return 0;
    return 1;
}
