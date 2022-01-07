
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; int mmgr; } ;
typedef int HPDF_STATUS ;
typedef int HPDF_Name ;
typedef TYPE_1__* HPDF_Dict ;


 int HPDF_Dict_Add (TYPE_1__*,char const*,int ) ;
 int HPDF_Error_GetCode (int ) ;
 int HPDF_Name_New (int ,char const*) ;

HPDF_STATUS
HPDF_Dict_AddName (HPDF_Dict dict,
                   const char *key,
                   const char *value)
{
    HPDF_Name name = HPDF_Name_New (dict->mmgr, value);
    if (!name)
        return HPDF_Error_GetCode (dict->error);

    return HPDF_Dict_Add (dict, key, name);
}
