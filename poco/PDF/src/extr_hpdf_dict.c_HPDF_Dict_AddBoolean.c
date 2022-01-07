
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; int mmgr; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Dict ;
typedef int HPDF_Boolean ;
typedef int HPDF_BOOL ;


 int HPDF_Boolean_New (int ,int ) ;
 int HPDF_Dict_Add (TYPE_1__*,char const*,int ) ;
 int HPDF_Error_GetCode (int ) ;

HPDF_STATUS
HPDF_Dict_AddBoolean (HPDF_Dict dict,
                      const char *key,
                      HPDF_BOOL value)
{
    HPDF_Boolean obj = HPDF_Boolean_New (dict->mmgr, value);

    if (!obj)
        return HPDF_Error_GetCode (dict->error);

    return HPDF_Dict_Add (dict, key, obj);
}
