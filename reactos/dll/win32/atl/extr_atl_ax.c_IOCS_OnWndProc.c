
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WNDPROC ;
typedef int UINT ;
struct TYPE_7__ {int OrigWndProc; } ;
typedef int RECT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef TYPE_1__ IOCS ;
typedef int HWND ;
typedef int BOOL ;


 int CallWindowProcW (int ,int ,int ,int ,int ) ;
 int HIWORD (int ) ;
 int IOCS_Detach (TYPE_1__*) ;
 int IOCS_OnDraw (TYPE_1__*) ;
 int IOCS_OnShow (TYPE_1__*,int ) ;
 int IOCS_OnSize (TYPE_1__*,int *) ;
 int LOWORD (int ) ;
 int SetRect (int *,int ,int ,int ,int ) ;





__attribute__((used)) static LRESULT IOCS_OnWndProc( IOCS *This, HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam )
{
    WNDPROC OrigWndProc = This->OrigWndProc;

    switch( uMsg )
    {
        case 131:
            IOCS_Detach( This );
            break;
        case 128:
            {
                RECT r;
                SetRect(&r, 0, 0, LOWORD(lParam), HIWORD(lParam));
                IOCS_OnSize( This, &r );
            }
            break;
        case 129:
            IOCS_OnShow( This, (BOOL) wParam );
            break;
        case 130:
            IOCS_OnDraw( This );
            break;
    }

    return CallWindowProcW( OrigWndProc, hWnd, uMsg, wParam, lParam );
}
