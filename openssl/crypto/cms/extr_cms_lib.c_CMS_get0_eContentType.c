
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int const ASN1_OBJECT ;


 int const** cms_get0_econtent_type (int *) ;

const ASN1_OBJECT *CMS_get0_eContentType(CMS_ContentInfo *cms)
{
    ASN1_OBJECT **petype;
    petype = cms_get0_econtent_type(cms);
    if (petype)
        return *petype;
    return ((void*)0);
}
