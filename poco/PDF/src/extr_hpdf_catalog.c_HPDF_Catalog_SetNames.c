
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_STATUS ;
typedef int HPDF_NameDict ;
typedef int HPDF_Catalog ;


 int HPDF_Dict_Add (int ,char*,int ) ;

HPDF_STATUS
HPDF_Catalog_SetNames (HPDF_Catalog catalog,
                        HPDF_NameDict dict)
{
    return HPDF_Dict_Add (catalog, "Names", dict);
}
