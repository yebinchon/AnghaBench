
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HPDF_NameDict ;
typedef int HPDF_Catalog ;


 int * HPDF_Dict_GetItem (int ,char*,int ) ;
 int HPDF_OCLASS_DICT ;

HPDF_NameDict
HPDF_Catalog_GetNames (HPDF_Catalog catalog)
{
    if (!catalog)
        return ((void*)0);
    return HPDF_Dict_GetItem (catalog, "Names", HPDF_OCLASS_DICT);
}
