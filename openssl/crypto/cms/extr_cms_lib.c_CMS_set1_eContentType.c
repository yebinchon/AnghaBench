
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int * OBJ_dup (int const*) ;
 int ** cms_get0_econtent_type (int *) ;

int CMS_set1_eContentType(CMS_ContentInfo *cms, const ASN1_OBJECT *oid)
{
    ASN1_OBJECT **petype, *etype;

    petype = cms_get0_econtent_type(cms);
    if (petype == ((void*)0))
        return 0;
    if (oid == ((void*)0))
        return 1;
    etype = OBJ_dup(oid);
    if (etype == ((void*)0))
        return 0;
    ASN1_OBJECT_free(*petype);
    *petype = etype;
    return 1;
}
