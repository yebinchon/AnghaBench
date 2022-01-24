#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  void* WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int const UINT ;
struct TYPE_11__ {void* dmOrientation; void* dmDefaultSource; void* dmPaperSize; } ;
struct TYPE_12__ {TYPE_1__ s1; } ;
struct TYPE_15__ {TYPE_2__ u1; int /*<<< orphan*/ * dmFormName; } ;
struct TYPE_14__ {int Flags; void* nToPage; void* nFromPage; int /*<<< orphan*/  hwndOwner; } ;
struct TYPE_13__ {int /*<<< orphan*/  hLandscapeIcon; int /*<<< orphan*/  hPortraitIcon; TYPE_5__* lpDevMode; int /*<<< orphan*/  hNoCollateIcon; int /*<<< orphan*/  hCollateIcon; int /*<<< orphan*/  HelpMessageID; TYPE_4__* lpPrintDlg; } ;
typedef  TYPE_3__ PRINT_PTRW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_4__* LPPRINTDLGW ;
typedef  TYPE_5__* LPDEVMODEW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BST_CHECKED ; 
 int /*<<< orphan*/  CBN_SELCHANGE ; 
 int CB_ERR ; 
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETITEMDATA ; 
 int /*<<< orphan*/  CB_GETLBTEXT ; 
 int /*<<< orphan*/  CB_GETLBTEXTLEN ; 
 int CCHFORMNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* DMORIENT_LANDSCAPE ; 
 void* DMORIENT_PORTRAIT ; 
 int DM_IN_BUFFER ; 
 int DM_IN_PROMPT ; 
 int DM_OUT_BUFFER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  EN_CHANGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  IDCANCEL 141 
#define  IDOK 140 
 int IMAGE_ICON ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int const) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int PD_PRINTSETUP ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  STM_SETIMAGE ; 
 void* FUNC18 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
#define  chx2 139 
#define  cmb1 138 
#define  cmb2 137 
#define  cmb3 136 
#define  cmb4 135 
#define  edt1 134 
#define  edt2 133 
#define  edt3 132 
 int const ico1 ; 
 int const ico3 ; 
#define  psh2 131 
#define  pshHelp 130 
#define  rad1 129 
#define  rad2 128 
 int /*<<< orphan*/  rad3 ; 
 int const stc10 ; 

__attribute__((used)) static LRESULT FUNC21(HWND hDlg, WPARAM wParam,
			           PRINT_PTRW* PrintStructures)
{
    LPPRINTDLGW lppd = PrintStructures->lpPrintDlg;
    UINT PrinterComboID = (lppd->Flags & PD_PRINTSETUP) ? cmb1 : cmb4;
    LPDEVMODEW lpdm = PrintStructures->lpDevMode;

    switch (FUNC14(wParam))  {
    case IDOK:
        FUNC20(" OK button was hit\n");
        if (!FUNC17(hDlg, PrintStructures)) {
	    FUNC5("Update printdlg was not successful!\n");
	    return(FALSE);
	}
	FUNC4(hDlg, TRUE);
	return(TRUE);

    case IDCANCEL:
        FUNC20(" CANCEL button was hit\n");
        FUNC4(hDlg, FALSE);
	return(FALSE);

     case pshHelp:
        FUNC20(" HELP button was hit\n");
        FUNC19(lppd->hwndOwner, PrintStructures->HelpMessageID,
        			(WPARAM) hDlg, (LPARAM) lppd);
        break;

     case chx2:                         /* collate pages checkbox */
        if (FUNC13(hDlg, chx2) == BST_CHECKED)
            FUNC18(hDlg, ico3, STM_SETIMAGE, IMAGE_ICON,
                                    (LPARAM)PrintStructures->hCollateIcon);
        else
            FUNC18(hDlg, ico3, STM_SETIMAGE, IMAGE_ICON,
                                    (LPARAM)PrintStructures->hNoCollateIcon);
        break;
     case edt1:                         /* from page nr editbox */
     case edt2:                         /* to page nr editbox */
        if (FUNC10(wParam)==EN_CHANGE) {
	    WORD nToPage;
	    WORD nFromPage;
	    nFromPage = FUNC7(hDlg, edt1, NULL, FALSE);
	    nToPage   = FUNC7(hDlg, edt2, NULL, FALSE);
            if (nFromPage != lppd->nFromPage || nToPage != lppd->nToPage)
	        FUNC0(hDlg, rad1, rad3, rad3);
	}
        break;

    case edt3:
        if(FUNC10(wParam) == EN_CHANGE) {
	    INT copies = FUNC7(hDlg, edt3, NULL, FALSE);
	    if(copies <= 1)
	        FUNC3(FUNC6(hDlg, chx2), FALSE);
	    else
                FUNC3(FUNC6(hDlg, chx2), TRUE);
        }
        break;

     case psh2:                       /* Properties button */
       {
         HANDLE hPrinter;
         WCHAR  PrinterName[256];

         if (!FUNC8(hDlg, PrinterComboID, PrinterName, 255)) break;
         if (!FUNC15(PrinterName, &hPrinter, NULL)) {
	     FUNC5(" Call to OpenPrinter did not succeed!\n");
	     break;
	 }
	 FUNC2(hDlg, hPrinter, PrinterName,
			     PrintStructures->lpDevMode,
			     PrintStructures->lpDevMode,
			     DM_IN_BUFFER | DM_OUT_BUFFER | DM_IN_PROMPT);
	 FUNC1(hPrinter);
         break;
       }

    case rad1: /* Paperorientation */
        if (lppd->Flags & PD_PRINTSETUP)
        {
              lpdm->u1.s1.dmOrientation = DMORIENT_PORTRAIT;
              FUNC18(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
                          (LPARAM)(PrintStructures->hPortraitIcon));
        }
        break;

    case rad2: /* Paperorientation */
        if (lppd->Flags & PD_PRINTSETUP)
        {
              lpdm->u1.s1.dmOrientation = DMORIENT_LANDSCAPE;
              FUNC18(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
                          (LPARAM)(PrintStructures->hLandscapeIcon));
        }
        break;

    case cmb1: /* Printer Combobox in PRINT SETUP */
	 /* FALLTHROUGH */
    case cmb4:                         /* Printer combobox */
         if (FUNC10(wParam)==CBN_SELCHANGE) {
	     WCHAR *PrinterName;
	     INT index = FUNC18(hDlg, FUNC14(wParam), CB_GETCURSEL, 0, 0);
	     INT length = FUNC18(hDlg, FUNC14(wParam), CB_GETLBTEXTLEN, index, 0);

	     PrinterName = FUNC11(FUNC9(),0,sizeof(WCHAR)*(length+1));
	     FUNC18(hDlg, FUNC14(wParam), CB_GETLBTEXT, index, (LPARAM)PrinterName);
	     FUNC16(hDlg, PrinterName, PrintStructures);
	     FUNC12(FUNC9(),0,PrinterName);
	 }
	 break;

    case cmb2: /* Papersize */
      {
	  DWORD Sel = FUNC18(hDlg, cmb2, CB_GETCURSEL, 0, 0);
	  if(Sel != CB_ERR) {
	      lpdm->u1.s1.dmPaperSize = FUNC18(hDlg, cmb2,
							    CB_GETITEMDATA,
							    Sel, 0);
	      FUNC8(hDlg, cmb2, lpdm->dmFormName, CCHFORMNAME);
	  }
      }
      break;

    case cmb3: /* Bin */
      {
	  DWORD Sel = FUNC18(hDlg, cmb3, CB_GETCURSEL, 0, 0);
	  if(Sel != CB_ERR)
	      lpdm->u1.s1.dmDefaultSource = FUNC18(hDlg, cmb3,
							  CB_GETITEMDATA, Sel,
							  0);
      }
      break;
    }
    if(lppd->Flags & PD_PRINTSETUP) {
        switch (FUNC14(wParam)) {
	case rad1:                         /* orientation */
	case rad2:
	    if (FUNC13(hDlg, rad1) == BST_CHECKED) {
	        if(lpdm->u1.s1.dmOrientation != DMORIENT_PORTRAIT) {
		    lpdm->u1.s1.dmOrientation = DMORIENT_PORTRAIT;
                    FUNC18(hDlg, stc10, STM_SETIMAGE, IMAGE_ICON,
					(LPARAM)PrintStructures->hPortraitIcon);
                    FUNC18(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
					(LPARAM)PrintStructures->hPortraitIcon);
		}
	    } else {
	        if(lpdm->u1.s1.dmOrientation != DMORIENT_LANDSCAPE) {
	            lpdm->u1.s1.dmOrientation = DMORIENT_LANDSCAPE;
                    FUNC18(hDlg, stc10, STM_SETIMAGE, IMAGE_ICON,
					(LPARAM)PrintStructures->hLandscapeIcon);
                    FUNC18(hDlg, ico1, STM_SETIMAGE, IMAGE_ICON,
					(LPARAM)PrintStructures->hLandscapeIcon);
		}
	    }
	    break;
	}
    }
    return FALSE;
}