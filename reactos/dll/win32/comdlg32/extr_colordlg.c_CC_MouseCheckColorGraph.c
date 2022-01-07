
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {long y; scalar_t__ x; } ;
struct TYPE_10__ {long right; long bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int BOOL ;


 int CONV_LPARAMTOPOINT (int ,TYPE_2__*) ;
 int ClientToScreen (int ,TYPE_2__*) ;
 int FALSE ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDlgItem (int ,int) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 long MAXHORI ;
 long MAXVERT ;
 int PtInRect (TYPE_1__*,TYPE_2__) ;
 int ScreenToClient (int ,TYPE_2__*) ;
 int TRUE ;

__attribute__((used)) static BOOL CC_MouseCheckColorGraph( HWND hDlg, int dlgitem, int *hori, int *vert, LPARAM lParam )
{
 HWND hwnd;
 POINT point;
 RECT rect;
 long x,y;

 CONV_LPARAMTOPOINT(lParam, &point);
 ClientToScreen(hDlg, &point);
 hwnd = GetDlgItem( hDlg, dlgitem );
 GetWindowRect(hwnd, &rect);

 if (!PtInRect(&rect, point))
  return FALSE;

 GetClientRect(hwnd, &rect);
 ScreenToClient(hwnd, &point);

 x = (long) point.x * MAXHORI;
 x /= rect.right;
 y = (long) (rect.bottom - point.y) * MAXVERT;
 y /= rect.bottom;

 if (x < 0) x = 0;
 if (y < 0) y = 0;
 if (x > MAXHORI) x = MAXHORI;
 if (y > MAXVERT) y = MAXVERT;

 if (hori)
  *hori = x;
 if (vert)
  *vert = y;

 return TRUE;
}
