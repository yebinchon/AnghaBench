
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_2__ {int fMask; int fStyle; int cyChild; int cyMinChild; int cx; int cxMinChild; int cxIdeal; int wID; int hwndChild; int cbSize; } ;
typedef TYPE_1__ REBARBANDINFOW ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HINSTANCE ;


 int CreateWindowW (int ,int *,int,int,int,int,int,int ,int ,int ,int *) ;
 int GetModuleHandleW (int ) ;
 int LoadStringW (int ,int ,int *,int) ;
 int MAX_STRING_LEN ;
 int RBBIM_CHILD ;
 int RBBIM_CHILDSIZE ;
 int RBBIM_ID ;
 int RBBIM_IDEALSIZE ;
 int RBBIM_SIZE ;
 int RBBIM_STYLE ;
 int RBBS_NOGRIPPER ;
 int RBBS_VARIABLEHEIGHT ;
 int RB_INSERTBANDW ;
 int REBARBANDINFOW_V6_SIZE ;
 int SendMessageW (int ,int ,int,int ) ;
 int ULongToHandle (int ) ;
 int WC_BUTTONW ;
 int WS_CHILD ;
 int WS_VISIBLE ;

__attribute__((used)) static void AddTextButton(HWND hRebarWnd, UINT string, UINT command, UINT id)
{
    REBARBANDINFOW rb;
    HINSTANCE hInstance = GetModuleHandleW(0);
    WCHAR text[MAX_STRING_LEN];
    HWND hButton;

    LoadStringW(hInstance, string, text, MAX_STRING_LEN);
    hButton = CreateWindowW(WC_BUTTONW, text,
                            WS_VISIBLE | WS_CHILD, 5, 5, 100, 15,
                            hRebarWnd, ULongToHandle(command), hInstance, ((void*)0));

    rb.cbSize = REBARBANDINFOW_V6_SIZE;
    rb.fMask = RBBIM_SIZE | RBBIM_CHILDSIZE | RBBIM_STYLE | RBBIM_CHILD | RBBIM_IDEALSIZE | RBBIM_ID;
    rb.fStyle = RBBS_NOGRIPPER | RBBS_VARIABLEHEIGHT;
    rb.hwndChild = hButton;
    rb.cyChild = rb.cyMinChild = 22;
    rb.cx = rb.cxMinChild = 90;
    rb.cxIdeal = 100;
    rb.wID = id;

    SendMessageW(hRebarWnd, RB_INSERTBANDW, -1, (LPARAM)&rb);
}
