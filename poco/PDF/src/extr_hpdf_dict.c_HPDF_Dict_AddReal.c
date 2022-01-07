
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; int mmgr; } ;
typedef int HPDF_STATUS ;
typedef int HPDF_Real ;
typedef int HPDF_REAL ;
typedef TYPE_1__* HPDF_Dict ;


 int HPDF_Dict_Add (TYPE_1__*,char const*,int ) ;
 int HPDF_Error_GetCode (int ) ;
 int HPDF_Real_New (int ,int ) ;

HPDF_STATUS
HPDF_Dict_AddReal (HPDF_Dict dict,
                    const char *key,
                    HPDF_REAL value)
{
    HPDF_Real real = HPDF_Real_New (dict->mmgr, value);

    if (!real)
        return HPDF_Error_GetCode (dict->error);

    return HPDF_Dict_Add (dict, key, real);
}
