
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {int lbselchstring; scalar_t__ hook; int ofnW; int hwnd; } ;
typedef int LRESULT ;
typedef char* LPWSTR ;
typedef int LPARAM ;
typedef scalar_t__ LONG ;
typedef int HWND ;
typedef TYPE_1__ FD31_DATA ;


 int BUFFILE ;
 int BUFFILEALLOC ;
 int CD_LBSELCHANGE ;
 scalar_t__ FD31_CallWindowProc (TYPE_1__ const*,int ,int ,int ) ;
 int FD31_ScanDir (int ,int ,char*) ;
 int FILE_bslash ;
 scalar_t__ LB_ERR ;
 int LB_GETCURSEL ;
 int LB_GETTEXT ;
 int MAKELONG (scalar_t__,int ) ;
 scalar_t__ SendDlgItemMessageW (int ,int ,int ,scalar_t__,int ) ;
 int TRUE ;
 char* heap_alloc (int ) ;
 int heap_free (char*) ;
 int lst2 ;
 int lstrcatW (char*,int ) ;
 int lstrcpyW (char*,char*) ;
 int lstrlenW (char*) ;

__attribute__((used)) static LRESULT FD31_DirListDblClick( const FD31_DATA *lfs )
{
  LONG lRet;
  HWND hWnd = lfs->hwnd;
  LPWSTR pstr;
  WCHAR tmpstr[BUFFILE];


  lRet = SendDlgItemMessageW(hWnd, lst2, LB_GETCURSEL, 0, 0);
  if (lRet == LB_ERR) return TRUE;
  pstr = heap_alloc(BUFFILEALLOC);
  SendDlgItemMessageW(hWnd, lst2, LB_GETTEXT, lRet,
       (LPARAM)pstr);
  lstrcpyW( tmpstr, pstr );
  heap_free(pstr);

  if (tmpstr[0] == '[')
    {
      tmpstr[lstrlenW(tmpstr) - 1] = 0;
      lstrcpyW(tmpstr,tmpstr+1);
    }
  lstrcatW(tmpstr, FILE_bslash);

  FD31_ScanDir(lfs->ofnW, hWnd, tmpstr);

  if (lfs->hook)
    {
      if (FD31_CallWindowProc(lfs, lfs->lbselchstring, lst2,
              MAKELONG(lRet,CD_LBSELCHANGE)))
        return TRUE;
    }
  return TRUE;
}
