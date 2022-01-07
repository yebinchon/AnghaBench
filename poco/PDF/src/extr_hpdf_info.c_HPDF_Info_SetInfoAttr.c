
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mmgr; int error; } ;
typedef int HPDF_STATUS ;
typedef scalar_t__ HPDF_InfoType ;
typedef int HPDF_Encoder ;
typedef TYPE_1__* HPDF_Dict ;


 int HPDF_Dict_Add (TYPE_1__*,char const*,int ) ;
 int HPDF_Dict_AddName (TYPE_1__*,char const*,char const*) ;
 scalar_t__ HPDF_INFO_MOD_DATE ;
 scalar_t__ HPDF_INFO_TRAPPED ;
 int HPDF_INVALID_PARAMETER ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_String_New (int ,char const*,int ) ;
 char* InfoTypeToName (scalar_t__) ;

HPDF_STATUS
HPDF_Info_SetInfoAttr (HPDF_Dict info,
                       HPDF_InfoType type,
                       const char *value,
                       HPDF_Encoder encoder)
{
    const char* name = InfoTypeToName (type);

    HPDF_PTRACE((" HPDF_Info_SetInfoAttr\n"));

    if (type <= HPDF_INFO_MOD_DATE)
        return HPDF_SetError (info->error, HPDF_INVALID_PARAMETER, 0);

    if (type == HPDF_INFO_TRAPPED)
        return HPDF_Dict_AddName(info, name, value);

    return HPDF_Dict_Add (info, name, HPDF_String_New (info->mmgr, value,
            encoder));
}
