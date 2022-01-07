
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dir ;
typedef int WPARAM ;
typedef char WCHAR ;
struct TYPE_7__ {int Flags; char* lpstrInitialDir; char* lpstrCustomFilter; int nFilterIndex; char* lpstrFile; scalar_t__ lpstrFilter; int lpstrTitle; } ;
struct TYPE_6__ {int lParam; scalar_t__ hook; TYPE_2__* ofnW; int hwnd; } ;
typedef TYPE_1__* PFD31_DATA ;
typedef char* LPWSTR ;
typedef TYPE_2__* LPOPENFILENAMEW ;
typedef scalar_t__ LPARAM ;
typedef int LONG ;
typedef int HWND ;


 int BUFFILE ;
 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int DDL_DRIVES ;
 int DDL_EXCLUSIVE ;
 scalar_t__ DRIVE_NO_ROOT_DIR ;
 int DlgDirListComboBoxW (int ,char*,int ,int ,int) ;
 int FALSE ;
 int FD31_CallWindowProc (TYPE_1__*,int ,int ,int ) ;
 char* FD31_GetFileType (char*,scalar_t__,int) ;
 int FD31_OFN_PROP ;
 int FD31_ScanDir (TYPE_2__*,int ,char*) ;
 int GetCurrentDirectoryA (int,char*) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetDriveTypeA (char*) ;
 int MAX_PATH ;
 int OFN_HIDEREADONLY ;
 int OFN_SHOWHELP ;
 int SW_HIDE ;
 int SendDlgItemMessageW (int ,int ,int ,int,scalar_t__) ;
 int SetDlgItemTextW (int ,int ,char*) ;
 int SetPropA (int ,int ,TYPE_1__*) ;
 int SetWindowTextW (int ,int ) ;
 int ShowWindow (int ,int ) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int WARN (char*,int) ;
 int WM_INITDIALOG ;
 int chx1 ;
 int cmb1 ;
 int cmb2 ;
 int debugstr_w (char*) ;
 int edt1 ;
 int lstrcpynW (char*,char*,int) ;
 int lstrlenW (char*) ;
 int pshHelp ;
 scalar_t__ toupper (char) ;

__attribute__((used)) static LONG FD31_WMInitDialog(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
  int i, n;
  WCHAR tmpstr[BUFFILE];
  LPWSTR pstr, old_pstr;
  LPOPENFILENAMEW ofn;
  PFD31_DATA lfs = (PFD31_DATA) lParam;

  if (!lfs) return FALSE;
  SetPropA(hWnd, FD31_OFN_PROP, lfs);
  lfs->hwnd = hWnd;
  ofn = lfs->ofnW;

  TRACE("flags=%x initialdir=%s\n", ofn->Flags, debugstr_w(ofn->lpstrInitialDir));

  SetWindowTextW( hWnd, ofn->lpstrTitle );

  if (ofn->lpstrCustomFilter)
    {
      pstr = ofn->lpstrCustomFilter;
      n = 0;
      TRACE("lpstrCustomFilter = %p\n", pstr);
      while(*pstr)
 {
   old_pstr = pstr;
          i = SendDlgItemMessageW(hWnd, cmb1, CB_ADDSTRING, 0,
                                   (LPARAM)(ofn->lpstrCustomFilter) + n );
          n += lstrlenW(pstr) + 1;
   pstr += lstrlenW(pstr) + 1;
   TRACE("add str=%s associated to %s\n",
                debugstr_w(old_pstr), debugstr_w(pstr));
          SendDlgItemMessageW(hWnd, cmb1, CB_SETITEMDATA, i, (LPARAM)pstr);
          n += lstrlenW(pstr) + 1;
   pstr += lstrlenW(pstr) + 1;
 }
    }

  if (ofn->lpstrFilter) {
 pstr = (LPWSTR) ofn->lpstrFilter;
 n = 0;
 while(*pstr) {
   old_pstr = pstr;
   i = SendDlgItemMessageW(hWnd, cmb1, CB_ADDSTRING, 0,
           (LPARAM)(ofn->lpstrFilter + n) );
   n += lstrlenW(pstr) + 1;
   pstr += lstrlenW(pstr) + 1;
   TRACE("add str=%s associated to %s\n",
                debugstr_w(old_pstr), debugstr_w(pstr));
   SendDlgItemMessageW(hWnd, cmb1, CB_SETITEMDATA, i, (LPARAM)pstr);
   n += lstrlenW(pstr) + 1;
   pstr += lstrlenW(pstr) + 1;
 }
  }

  if (ofn->nFilterIndex == 0 && ofn->lpstrCustomFilter == ((void*)0))
   ofn->nFilterIndex = 1;
  SendDlgItemMessageW(hWnd, cmb1, CB_SETCURSEL, ofn->nFilterIndex - 1, 0);
  if (ofn->lpstrFile && ofn->lpstrFile[0])
  {
    TRACE( "SetText of edt1 to %s\n", debugstr_w(ofn->lpstrFile) );
    SetDlgItemTextW( hWnd, edt1, ofn->lpstrFile );
  }
  else
  {
    lstrcpynW(tmpstr, FD31_GetFileType(ofn->lpstrCustomFilter,
      ofn->lpstrFilter, ofn->nFilterIndex - 1),BUFFILE);
    TRACE("nFilterIndex = %d, SetText of edt1 to %s\n",
     ofn->nFilterIndex, debugstr_w(tmpstr));
    SetDlgItemTextW( hWnd, edt1, tmpstr );
  }

  *tmpstr = 0;
  DlgDirListComboBoxW(hWnd, tmpstr, cmb2, 0, DDL_DRIVES | DDL_EXCLUSIVE);





  if (ofn->lpstrInitialDir != ((void*)0))
    {
      int len;
      lstrcpynW(tmpstr, ofn->lpstrInitialDir, 511);
      len = lstrlenW(tmpstr);
      if (len > 0 && tmpstr[len-1] != '\\' && tmpstr[len-1] != ':') {
        tmpstr[len]='\\';
        tmpstr[len+1]='\0';
      }
    }
  else
    *tmpstr = 0;
  if (!FD31_ScanDir(ofn, hWnd, tmpstr)) {
    *tmpstr = 0;
    if (!FD31_ScanDir(ofn, hWnd, tmpstr))
      WARN("Couldn't read initial directory %s!\n", debugstr_w(tmpstr));
  }

  {
      char dir[MAX_PATH];
      char str[4] = "a:\\";
      GetCurrentDirectoryA( sizeof(dir), dir );
      for(i = 0, n = -1; i < 26; i++)
      {
          str[0] = 'a' + i;
          if (GetDriveTypeA(str) > DRIVE_NO_ROOT_DIR) n++;
          if (toupper(str[0]) == toupper(dir[0])) break;
      }
  }
  SendDlgItemMessageW(hWnd, cmb2, CB_SETCURSEL, n, 0);
  if (!(ofn->Flags & OFN_SHOWHELP))
    ShowWindow(GetDlgItem(hWnd, pshHelp), SW_HIDE);
  if (ofn->Flags & OFN_HIDEREADONLY)
    ShowWindow(GetDlgItem(hWnd, chx1), SW_HIDE);
  if (lfs->hook)
      return FD31_CallWindowProc(lfs, WM_INITDIALOG, wParam, lfs->lParam);
  return TRUE;
}
