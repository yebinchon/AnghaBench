
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int params ;
typedef int UINT ;
struct TYPE_3__ {int cbSize; scalar_t__ dwLanguageId; int * lpfnMsgBoxCallback; scalar_t__ dwContextHelpId; int * lpszIcon; int dwStyle; void* lpszCaption; void* lpszText; int hInstance; int hwndOwner; } ;
typedef TYPE_1__ MSGBOXPARAMSW ;
typedef void* LPCWSTR ;
typedef int HWND ;


 int GetModuleHandleW (int ) ;
 int MessageBoxIndirectW (TYPE_1__*) ;

__attribute__((used)) static int MessageBoxWithResStringW(HWND hWnd, LPCWSTR lpText, LPCWSTR lpCaption, UINT uType)
{
    MSGBOXPARAMSW params;

    params.cbSize = sizeof(params);
    params.hwndOwner = hWnd;
    params.hInstance = GetModuleHandleW(0);
    params.lpszText = lpText;
    params.lpszCaption = lpCaption;
    params.dwStyle = uType;
    params.lpszIcon = ((void*)0);
    params.dwContextHelpId = 0;
    params.lpfnMsgBoxCallback = ((void*)0);
    params.dwLanguageId = 0;
    return MessageBoxIndirectW(&params);
}
