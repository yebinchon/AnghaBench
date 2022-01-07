
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ps ;
typedef int WPARAM ;
struct TYPE_10__ {int uDisplayFormat; int hInstance; int hMainWnd; } ;
struct TYPE_9__ {int hdc; int rcPaint; scalar_t__ fErase; } ;
typedef int RECT ;
typedef int PPAINTSTRUCT ;
typedef TYPE_1__ PAINTSTRUCT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HGLOBAL ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int COLORREF ;


 int BeginPaint (int ,TYPE_1__*) ;
 int BitBltFromClipboard (TYPE_1__,int ,int ) ;
 scalar_t__ COLOR_WINDOW ;
 scalar_t__ COLOR_WINDOWTEXT ;
 int CloseClipboard () ;
 int CopyMemory (int ,TYPE_1__*,int) ;
 int DIB_RGB_COLORS ;
 int DT_CENTER ;
 int DT_NOPREFIX ;
 int DT_WORDBREAK ;
 int DrawTextFromClipboard (int,TYPE_1__,int ) ;
 int DrawTextFromResource (int ,int ,int ,int *,int) ;
 int ERROR_UNSUPPORTED_FORMAT ;
 int EndPaint (int ,TYPE_1__*) ;
 int FillRect (int ,int *,int ) ;
 int GMEM_MOVEABLE ;
 int GetClientRect (int ,int *) ;
 int GetSysColor (scalar_t__) ;
 int GlobalAlloc (int ,int) ;
 int GlobalFree (int ) ;
 int GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 TYPE_3__ Globals ;
 int OpenClipboard (int ) ;
 int PlayEnhMetaFileFromClipboard (int ,int *) ;
 int PlayMetaFileFromClipboard (int ,int *) ;
 int RealizeClipboardPalette (int ) ;
 int SRCCOPY ;
 int Scrollstate ;
 int SendClipboardOwnerMessage (int ,int ,int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetDIBitsToDeviceFromClipboard (int,TYPE_1__,int ,int ) ;
 int SetTextColor (int ,int ) ;
 int TRUE ;
 int WM_PAINTCLIPBOARD ;

__attribute__((used)) static void OnPaint(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
    HDC hdc;
    PAINTSTRUCT ps;
    COLORREF crOldBkColor, crOldTextColor;
    RECT rc;

    if (!OpenClipboard(Globals.hMainWnd))
        return;

    hdc = BeginPaint(hWnd, &ps);


    if (ps.fErase)
        FillRect(ps.hdc, &ps.rcPaint, (HBRUSH)(COLOR_WINDOW + 1));


    crOldBkColor = SetBkColor(ps.hdc, GetSysColor(COLOR_WINDOW));
    crOldTextColor = SetTextColor(ps.hdc, GetSysColor(COLOR_WINDOWTEXT));


    RealizeClipboardPalette(ps.hdc);

    switch (Globals.uDisplayFormat)
    {
        case 132:
        {

            break;
        }

        case 135:
        case 129:
        case 131:
        case 128:
        {
            DrawTextFromClipboard(Globals.uDisplayFormat, ps, Scrollstate);
            break;
        }

        case 138:
        case 141:
        {
            BitBltFromClipboard(ps, Scrollstate, SRCCOPY);
            break;
        }

        case 140:
        case 139:
        {
            SetDIBitsToDeviceFromClipboard(Globals.uDisplayFormat, ps, Scrollstate, DIB_RGB_COLORS);
            break;
        }

        case 136:
        case 133:
        {
            GetClientRect(hWnd, &rc);
            PlayMetaFileFromClipboard(hdc, &rc);
            break;
        }

        case 137:
        case 134:
        {
            GetClientRect(hWnd, &rc);
            PlayEnhMetaFileFromClipboard(hdc, &rc);
            break;
        }





        case 130:
        {
            HGLOBAL hglb;
            PPAINTSTRUCT pps;

            hglb = GlobalAlloc(GMEM_MOVEABLE, sizeof(ps));
            if (hglb)
            {
                pps = GlobalLock(hglb);
                CopyMemory(pps, &ps, sizeof(ps));
                GlobalUnlock(hglb);

                SendClipboardOwnerMessage(TRUE, WM_PAINTCLIPBOARD,
                                          (WPARAM)hWnd, (LPARAM)hglb);

                GlobalFree(hglb);
            }
            break;
        }

        default:
        {
            GetClientRect(hWnd, &rc);
            DrawTextFromResource(Globals.hInstance, ERROR_UNSUPPORTED_FORMAT,
                                 hdc, &rc, DT_CENTER | DT_WORDBREAK | DT_NOPREFIX);
            break;
        }
    }


    SetTextColor(ps.hdc, crOldTextColor);
    SetBkColor(ps.hdc, crOldBkColor);

    EndPaint(hWnd, &ps);

    CloseClipboard();
}
