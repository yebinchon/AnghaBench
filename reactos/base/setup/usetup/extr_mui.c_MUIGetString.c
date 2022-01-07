
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_3__ {scalar_t__ Number; char* String; } ;
typedef TYPE_1__ MUI_STRING ;
typedef char* LPSTR ;
typedef int CHAR ;


 int FindLanguageIndex () ;
 TYPE_1__* FindMUIStringEntries () ;
 int POPUP_WAIT_NONE ;
 int PopupError (int *,int *,int *,int ) ;
 int sprintf (int *,char*,size_t,int ) ;

LPSTR
MUIGetString(
    ULONG Number)
{
    ULONG i;
    const MUI_STRING * entry;
    CHAR szErr[128];

    entry = FindMUIStringEntries();
    if (entry)
    {
        for (i = 0; entry[i].Number != 0; i++)
        {
            if (entry[i].Number == Number)
            {
                return entry[i].String;
            }
        }
    }

    sprintf(szErr, "Error: failed find string id %lu for language index %lu\n", Number, FindLanguageIndex());

    PopupError(szErr,
               ((void*)0),
               ((void*)0),
               POPUP_WAIT_NONE);

    return "<nostring>";
}
