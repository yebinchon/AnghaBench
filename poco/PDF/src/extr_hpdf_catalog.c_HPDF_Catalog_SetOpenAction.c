
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_STATUS ;
typedef int HPDF_Destination ;
typedef int HPDF_Catalog ;


 int HPDF_Dict_Add (int ,char*,int ) ;
 int HPDF_Dict_RemoveElement (int ,char*) ;
 int HPDF_OK ;

HPDF_STATUS
HPDF_Catalog_SetOpenAction (HPDF_Catalog catalog,
                             HPDF_Destination open_action)
{
    if (!open_action) {
        HPDF_Dict_RemoveElement (catalog, "OpenAction");
        return HPDF_OK;
    }

    return HPDF_Dict_Add (catalog, "OpenAction", open_action);
}
