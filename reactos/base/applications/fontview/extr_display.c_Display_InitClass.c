
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbSize; int * hIconSm; int lpszClassName; int * lpszMenuName; int hbrBackground; int hCursor; int * hIcon; int hInstance; scalar_t__ cbWndExtra; scalar_t__ cbClsExtra; int lpfnWndProc; int style; } ;
typedef TYPE_1__ WNDCLASSEXW ;
typedef int WNDCLASSEX ;
typedef int HINSTANCE ;
typedef int BOOL ;


 int CS_DBLCLKS ;
 int DisplayProc ;
 int FALSE ;
 int GetStockObject (int ) ;
 int IDC_ARROW ;
 int LoadCursor (int *,int ) ;
 int RegisterClassExW (TYPE_1__*) ;
 int TRUE ;
 int WHITE_BRUSH ;
 int g_szFontDisplayClassName ;

BOOL
Display_InitClass(HINSTANCE hInstance)
{
 WNDCLASSEXW wincl;


 wincl.cbSize = sizeof(WNDCLASSEX);
 wincl.style = CS_DBLCLKS;
 wincl.lpfnWndProc = DisplayProc;
 wincl.cbClsExtra = 0;
 wincl.cbWndExtra = 0;
 wincl.hInstance = hInstance;
 wincl.hIcon = ((void*)0);
 wincl.hCursor = LoadCursor (((void*)0), IDC_ARROW);
 wincl.hbrBackground = GetStockObject(WHITE_BRUSH);
 wincl.lpszMenuName = ((void*)0);
 wincl.lpszClassName = g_szFontDisplayClassName;
 wincl.hIconSm = ((void*)0);


 if (!RegisterClassExW (&wincl))
 {
  return FALSE;
 }
 return TRUE;
}
