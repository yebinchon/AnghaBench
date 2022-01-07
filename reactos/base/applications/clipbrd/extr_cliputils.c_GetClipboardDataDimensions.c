
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bmp ;
typedef int UINT ;
struct TYPE_11__ {int hMainWnd; } ;
struct TYPE_10__ {int bmHeight; int bmWidth; } ;
struct TYPE_9__ {int bcHeight; int bcWidth; } ;
struct TYPE_8__ {int biSize; int biHeight; int biWidth; } ;
struct TYPE_7__ {int cy; int cx; int member_1; int member_0; } ;
typedef int SIZE_T ;
typedef TYPE_1__ SIZE ;
typedef void* PVOID ;
typedef int PRECT ;
typedef int * LPCWSTR ;
typedef int * LPCSTR ;
typedef TYPE_2__* LPBITMAPINFOHEADER ;
typedef TYPE_3__* LPBITMAPCOREHEADER ;
typedef int HGLOBAL ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int DWORD ;
typedef int BOOL ;
typedef int BITMAPV5HEADER ;
typedef int BITMAPV4HEADER ;
typedef int BITMAPINFOHEADER ;
typedef int BITMAPCOREHEADER ;
typedef TYPE_4__ BITMAP ;


 int ANSI_NULL ;
 int CloseClipboard () ;
 int FALSE ;
 int GetClipboardData (int const) ;
 int GetDC (int ) ;
 int GetLineExtentA (void*,int **) ;
 int GetLineExtentW (void*,int **) ;
 int GetObjectW (int ,int,TYPE_4__*) ;
 int GetTabbedTextExtentA (int ,void*,int ,int ,int *) ;
 int GetTabbedTextExtentW (int ,void*,int ,int ,int *) ;
 void* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 TYPE_5__ Globals ;
 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int OpenClipboard (int ) ;
 int ReleaseDC (int ,int ) ;
 int SetRect (int ,int ,int ,int ,int ) ;
 int SetRectEmpty (int ) ;
 int TRUE ;
 int UNICODE_NULL ;
 int max (int ,int ) ;

BOOL GetClipboardDataDimensions(UINT uFormat, PRECT pRc)
{
    SetRectEmpty(pRc);

    if (!OpenClipboard(Globals.hMainWnd))
    {
        return FALSE;
    }

    switch (uFormat)
    {
        case 132:
        case 135:
        {
            HBITMAP hBitmap;
            BITMAP bmp;

            hBitmap = (HBITMAP)GetClipboardData(135);
            GetObjectW(hBitmap, sizeof(bmp), &bmp);
            SetRect(pRc, 0, 0, bmp.bmWidth, bmp.bmHeight);
            break;
        }

        case 134:
        case 133:
        {
            HGLOBAL hGlobal;
            LPBITMAPINFOHEADER lpInfoHeader;

            hGlobal = GetClipboardData(uFormat);
            if (!hGlobal)
                break;

            lpInfoHeader = GlobalLock(hGlobal);
            if (!lpInfoHeader)
                break;

            if (lpInfoHeader->biSize == sizeof(BITMAPCOREHEADER))
            {
                LPBITMAPCOREHEADER lpCoreHeader = (LPBITMAPCOREHEADER)lpInfoHeader;
                SetRect(pRc, 0, 0,
                        lpCoreHeader->bcWidth,
                        lpCoreHeader->bcHeight);
            }
            else if ((lpInfoHeader->biSize == sizeof(BITMAPINFOHEADER)) ||
                     (lpInfoHeader->biSize == sizeof(BITMAPV4HEADER)) ||
                     (lpInfoHeader->biSize == sizeof(BITMAPV5HEADER)))
            {
                SetRect(pRc, 0, 0,
                        lpInfoHeader->biWidth,

                        (lpInfoHeader->biHeight > 0) ? lpInfoHeader->biHeight
                                                     : -lpInfoHeader->biHeight);
            }
            else
            {

            }

            GlobalUnlock(hGlobal);
            break;
        }

        case 131:
        case 129:
        case 130:
        case 128:
        {
            HDC hDC;
            HGLOBAL hGlobal;
            PVOID lpText, ptr;
            DWORD dwSize;
            SIZE txtSize = {0, 0};
            SIZE_T lineSize;

            hGlobal = GetClipboardData(uFormat);
            if (!hGlobal)
                break;

            lpText = GlobalLock(hGlobal);
            if (!lpText)
                break;

            hDC = GetDC(Globals.hMainWnd);


            for (;;)
            {
                if (uFormat == 128)
                {
                    if (*(LPCWSTR)lpText == UNICODE_NULL)
                        break;
                    lineSize = GetLineExtentW(lpText, (LPCWSTR*)&ptr);
                    dwSize = GetTabbedTextExtentW(hDC, lpText, lineSize, 0, ((void*)0));
                }
                else
                {
                    if (*(LPCSTR)lpText == ANSI_NULL)
                        break;
                    lineSize = GetLineExtentA(lpText, (LPCSTR*)&ptr);
                    dwSize = GetTabbedTextExtentA(hDC, lpText, lineSize, 0, ((void*)0));
                }
                txtSize.cx = max(txtSize.cx, LOWORD(dwSize));
                txtSize.cy += HIWORD(dwSize);
                lpText = ptr;
            }

            ReleaseDC(Globals.hMainWnd, hDC);

            GlobalUnlock(hGlobal);

            SetRect(pRc, 0, 0, txtSize.cx, txtSize.cy);
            break;
        }

        default:
        {
            break;
        }
    }

    CloseClipboard();

    return TRUE;
}
