
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {scalar_t__ lpDisplayName; } ;
typedef int* LPWSTR ;
typedef TYPE_1__* LPQUERY_SERVICE_CONFIG ;
typedef int LPARAM ;
typedef int HWND ;


 int GetProcessHeap () ;
 TYPE_1__* GetServiceConfig (int*) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int LB_ADDSTRING ;
 int SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static VOID
AddServiceNamesToStop(HWND hServiceListBox,
                      LPWSTR lpServiceList)
{
    LPQUERY_SERVICE_CONFIG lpServiceConfig;
    LPWSTR lpStr;

    lpStr = lpServiceList;


    for (;;)
    {

        if (*lpStr == L'\0' && *(lpStr + 1) == L'\0')
            break;



        if (*lpStr == L'\0')
            lpStr++;


        lpServiceConfig = GetServiceConfig(lpStr);
        if (lpServiceConfig)
        {

            SendMessageW(hServiceListBox,
                         LB_ADDSTRING,
                         0,
                         (LPARAM)lpServiceConfig->lpDisplayName);

            HeapFree(GetProcessHeap(), 0, lpServiceConfig);
        }


        while (*lpStr != L'\0')
            lpStr++;
    }
}
