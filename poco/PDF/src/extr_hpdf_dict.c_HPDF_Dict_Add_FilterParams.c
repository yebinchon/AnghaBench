
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int error; int mmgr; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Dict ;
typedef int * HPDF_Array ;


 int HPDF_Array_Add (int *,TYPE_1__*) ;
 int * HPDF_Array_New (int ) ;
 int HPDF_Dict_Add (TYPE_1__*,char*,int *) ;
 int * HPDF_Dict_GetItem (TYPE_1__*,char*,int ) ;
 int HPDF_Error_GetCode (int ) ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_OK ;

HPDF_STATUS
HPDF_Dict_Add_FilterParams(HPDF_Dict dict, HPDF_Dict filterParam)
{
    HPDF_Array paramArray;

    paramArray = HPDF_Dict_GetItem (dict, "DecodeParms",
                                              HPDF_OCLASS_ARRAY);
    if(paramArray==((void*)0)) {
        paramArray = HPDF_Array_New (dict->mmgr);
       if (!paramArray)
            return HPDF_Error_GetCode (dict->error);


        HPDF_Dict_Add(dict, "DecodeParms", paramArray);
    }
    HPDF_Array_Add(paramArray, filterParam);
    return HPDF_OK;
}
