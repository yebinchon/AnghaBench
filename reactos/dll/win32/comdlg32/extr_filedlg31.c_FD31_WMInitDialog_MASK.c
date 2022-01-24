#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dir ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  char WCHAR ;
struct TYPE_7__ {int Flags; char* lpstrInitialDir; char* lpstrCustomFilter; int nFilterIndex; char* lpstrFile; scalar_t__ lpstrFilter; int /*<<< orphan*/  lpstrTitle; } ;
struct TYPE_6__ {int /*<<< orphan*/  lParam; scalar_t__ hook; TYPE_2__* ofnW; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__* PFD31_DATA ;
typedef  char* LPWSTR ;
typedef  TYPE_2__* LPOPENFILENAMEW ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int BUFFILE ; 
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int DDL_DRIVES ; 
 int DDL_EXCLUSIVE ; 
 scalar_t__ DRIVE_NO_ROOT_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FD31_OFN_PROP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 int MAX_PATH ; 
 int OFN_HIDEREADONLY ; 
 int OFN_SHOWHELP ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  WM_INITDIALOG ; 
 int /*<<< orphan*/  chx1 ; 
 int /*<<< orphan*/  cmb1 ; 
 int /*<<< orphan*/  cmb2 ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  edt1 ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  pshHelp ; 
 scalar_t__ FUNC17 (char) ; 

__attribute__((used)) static LONG FUNC18(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
  int i, n;
  WCHAR tmpstr[BUFFILE];
  LPWSTR pstr, old_pstr;
  LPOPENFILENAMEW ofn;
  PFD31_DATA lfs = (PFD31_DATA) lParam;

  if (!lfs) return FALSE;
  FUNC9(hWnd, FD31_OFN_PROP, lfs);
  lfs->hwnd = hWnd;
  ofn = lfs->ofnW;

  FUNC12("flags=%x initialdir=%s\n", ofn->Flags, FUNC14(ofn->lpstrInitialDir));

  FUNC10( hWnd, ofn->lpstrTitle );
  /* read custom filter information */
  if (ofn->lpstrCustomFilter)
    {
      pstr = ofn->lpstrCustomFilter;
      n = 0;
      FUNC12("lpstrCustomFilter = %p\n", pstr);
      while(*pstr)
	{
	  old_pstr = pstr;
          i = FUNC7(hWnd, cmb1, CB_ADDSTRING, 0,
                                   (LPARAM)(ofn->lpstrCustomFilter) + n );
          n += FUNC16(pstr) + 1;
	  pstr += FUNC16(pstr) + 1;
	  FUNC12("add str=%s associated to %s\n",
                FUNC14(old_pstr), FUNC14(pstr));
          FUNC7(hWnd, cmb1, CB_SETITEMDATA, i, (LPARAM)pstr);
          n += FUNC16(pstr) + 1;
	  pstr += FUNC16(pstr) + 1;
	}
    }
  /* read filter information */
  if (ofn->lpstrFilter) {
	pstr = (LPWSTR) ofn->lpstrFilter;
	n = 0;
	while(*pstr) {
	  old_pstr = pstr;
	  i = FUNC7(hWnd, cmb1, CB_ADDSTRING, 0,
				       (LPARAM)(ofn->lpstrFilter + n) );
	  n += FUNC16(pstr) + 1;
	  pstr += FUNC16(pstr) + 1;
	  FUNC12("add str=%s associated to %s\n",
                FUNC14(old_pstr), FUNC14(pstr));
	  FUNC7(hWnd, cmb1, CB_SETITEMDATA, i, (LPARAM)pstr);
	  n += FUNC16(pstr) + 1;
	  pstr += FUNC16(pstr) + 1;
	}
  }
  /* set default filter */
  if (ofn->nFilterIndex == 0 && ofn->lpstrCustomFilter == NULL)
  	ofn->nFilterIndex = 1;
  FUNC7(hWnd, cmb1, CB_SETCURSEL, ofn->nFilterIndex - 1, 0);
  if (ofn->lpstrFile && ofn->lpstrFile[0])
  {
    FUNC12( "SetText of edt1 to %s\n", FUNC14(ofn->lpstrFile) );
    FUNC8( hWnd, edt1, ofn->lpstrFile );
  }
  else
  {
    FUNC15(tmpstr, FUNC2(ofn->lpstrCustomFilter,
	     ofn->lpstrFilter, ofn->nFilterIndex - 1),BUFFILE);
    FUNC12("nFilterIndex = %d, SetText of edt1 to %s\n",
  			ofn->nFilterIndex, FUNC14(tmpstr));
    FUNC8( hWnd, edt1, tmpstr );
  }
  /* get drive list */
  *tmpstr = 0;
  FUNC0(hWnd, tmpstr, cmb2, 0, DDL_DRIVES | DDL_EXCLUSIVE);
  /* read initial directory */
  /* FIXME: Note that this is now very version-specific (See MSDN description of
   * the OPENFILENAME structure).  For example under 2000/XP any path in the
   * lpstrFile overrides the lpstrInitialDir, but not under 95/98/ME
   */
  if (ofn->lpstrInitialDir != NULL)
    {
      int len;
      FUNC15(tmpstr, ofn->lpstrInitialDir, 511);
      len = FUNC16(tmpstr);
      if (len > 0 && tmpstr[len-1] != '\\'  && tmpstr[len-1] != ':') {
        tmpstr[len]='\\';
        tmpstr[len+1]='\0';
      }
    }
  else
    *tmpstr = 0;
  if (!FUNC3(ofn, hWnd, tmpstr)) {
    *tmpstr = 0;
    if (!FUNC3(ofn, hWnd, tmpstr))
      FUNC13("Couldn't read initial directory %s!\n", FUNC14(tmpstr));
  }
  /* select current drive in combo 2, omit missing drives */
  {
      char dir[MAX_PATH];
      char str[4] = "a:\\";
      FUNC4( sizeof(dir), dir );
      for(i = 0, n = -1; i < 26; i++)
      {
          str[0] = 'a' + i;
          if (FUNC6(str) > DRIVE_NO_ROOT_DIR) n++;
          if (FUNC17(str[0]) == FUNC17(dir[0])) break;
      }
  }
  FUNC7(hWnd, cmb2, CB_SETCURSEL, n, 0);
  if (!(ofn->Flags & OFN_SHOWHELP))
    FUNC11(FUNC5(hWnd, pshHelp), SW_HIDE);
  if (ofn->Flags & OFN_HIDEREADONLY)
    FUNC11(FUNC5(hWnd, chx1), SW_HIDE);
  if (lfs->hook)
      return FUNC1(lfs, WM_INITDIALOG, wParam, lfs->lParam);
  return TRUE;
}