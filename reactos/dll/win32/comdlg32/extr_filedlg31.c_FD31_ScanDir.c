
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {scalar_t__ nFilterIndex; int lpstrFilter; int lpstrCustomFilter; } ;
typedef TYPE_1__ OPENFILENAMEW ;
typedef int LRESULT ;
typedef int LPSTR ;
typedef char* LPCWSTR ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;
typedef int HCURSOR ;
typedef int BOOL ;


 int BUFFILE ;
 int DDL_DIRECTORY ;
 int DDL_EXCLUSIVE ;
 int DlgDirListW (scalar_t__,char*,int ,int ,int) ;
 int FALSE ;
 int FD31_GetFileType (int ,int ,scalar_t__) ;
 int FILE_star ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 scalar_t__ IDC_WAIT ;
 int LB_DIR ;
 int LB_RESETCONTENT ;
 int LoadCursorA (int ,int ) ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int SetCurrentDirectoryW (char*) ;
 int SetCursor (int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (char*) ;
 int lst1 ;
 int lst2 ;
 int lstrcpyW (char*,int ) ;
 int lstrcpynW (char*,int ,int) ;
 int stc1 ;
 char* wcschr (char*,char) ;

__attribute__((used)) static BOOL FD31_ScanDir(const OPENFILENAMEW *ofn, HWND hWnd, LPCWSTR newPath)
{
    WCHAR buffer[BUFFILE];
    HWND hdlg;
    LRESULT lRet = TRUE;
    HCURSOR hCursorWait, oldCursor;

    TRACE("Trying to change to %s\n", debugstr_w(newPath));
    if ( newPath[0] && !SetCurrentDirectoryW( newPath ))
        return FALSE;


    lstrcpynW(buffer, FD31_GetFileType(ofn->lpstrCustomFilter,
              ofn->lpstrFilter, ofn->nFilterIndex - 1), BUFFILE);

    hCursorWait = LoadCursorA(0, (LPSTR)IDC_WAIT);
    oldCursor = SetCursor(hCursorWait);


    if ((hdlg = GetDlgItem(hWnd, lst1)) != 0) {
        WCHAR* scptr;
 WCHAR* filter = buffer;

 TRACE("Using filter %s\n", debugstr_w(filter));
 SendMessageW(hdlg, LB_RESETCONTENT, 0, 0);
 while (filter) {
     scptr = wcschr(filter, ';');
     if (scptr) *scptr = 0;
     while (*filter == ' ') filter++;
     TRACE("Using file spec %s\n", debugstr_w(filter));
     SendMessageW(hdlg, LB_DIR, 0, (LPARAM)filter);
     if (scptr) *scptr = ';';
     filter = (scptr) ? (scptr + 1) : 0;
  }
    }


    lstrcpyW(buffer, FILE_star);

    if (GetDlgItem(hWnd, lst2) != 0) {
        lRet = DlgDirListW(hWnd, buffer, lst2, stc1, DDL_EXCLUSIVE | DDL_DIRECTORY);
    }
    SetCursor(oldCursor);
    return lRet;
}
