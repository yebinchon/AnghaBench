
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_STATUS ;
typedef scalar_t__ HPDF_PageMode ;
typedef size_t HPDF_INT ;
typedef int HPDF_Catalog ;


 int HPDF_Dict_AddName (int ,char*,int ) ;
 int * HPDF_PAGE_MODE_NAMES ;

HPDF_STATUS
HPDF_Catalog_SetPageMode (HPDF_Catalog catalog,
                           HPDF_PageMode mode)
{
    return HPDF_Dict_AddName (catalog, "PageMode",
                    HPDF_PAGE_MODE_NAMES[(HPDF_INT)mode]);
}
