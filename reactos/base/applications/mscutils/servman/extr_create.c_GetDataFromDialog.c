
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* Options; void* Description; void* BinPath; void* DisplayName; void* ServiceName; } ;
typedef TYPE_1__* PCREATE_DATA ;
typedef int BOOL ;


 int FALSE ;
 void* GetStringFromDialog (TYPE_1__*,int ) ;
 int IDC_CREATE_DESC ;
 int IDC_CREATE_DISPNAME ;
 int IDC_CREATE_OPTIONS ;
 int IDC_CREATE_PATH ;
 int IDC_CREATE_SERVNAME ;
 int TRUE ;

__attribute__((used)) static BOOL
GetDataFromDialog(PCREATE_DATA Data)
{
    BOOL bRet = FALSE;

    if ((Data->ServiceName = GetStringFromDialog(Data, IDC_CREATE_SERVNAME)))
    {
        if ((Data->DisplayName = GetStringFromDialog(Data, IDC_CREATE_DISPNAME)))
        {
            if ((Data->BinPath = GetStringFromDialog(Data, IDC_CREATE_PATH)))
            {
                Data->Description = GetStringFromDialog(Data, IDC_CREATE_DESC);
                Data->Options = GetStringFromDialog(Data, IDC_CREATE_OPTIONS);

                bRet = TRUE;
            }
        }
    }

    return bRet;
}
