
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
typedef TYPE_1__* HPDF_String ;
typedef int HPDF_InfoType ;
typedef int HPDF_Dict ;


 TYPE_1__* HPDF_Dict_GetItem (int ,char const*,int ) ;
 int HPDF_OCLASS_STRING ;
 int HPDF_PTRACE (char*) ;
 char* InfoTypeToName (int ) ;

const char*
HPDF_Info_GetInfoAttr (HPDF_Dict info,
                       HPDF_InfoType type)
{
    const char* name = InfoTypeToName (type);
    HPDF_String s;

    HPDF_PTRACE((" HPDF_Info_GetInfoAttr\n"));

    if (!info)
        return ((void*)0);

    s = HPDF_Dict_GetItem (info, name, HPDF_OCLASS_STRING);

    if (!s)
        return ((void*)0);
    else
        return (const char *)(s->value);
}
