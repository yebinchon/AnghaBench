#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_6__ {scalar_t__ dmPaperSize; scalar_t__ dmDefaultSource; } ;
struct TYPE_7__ {TYPE_1__ s1; } ;
struct TYPE_8__ {TYPE_2__ u1; } ;
typedef  char* LPSTR ;
typedef  TYPE_3__* LPDEVMODEA ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int CB_ERR ; 
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETITEMDATA ; 
 int /*<<< orphan*/  CB_RESETCONTENT ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int DC_BINNAMES ; 
 int DC_BINS ; 
 int DC_PAPERNAMES ; 
 int DC_PAPERS ; 
 scalar_t__ DMPAPER_USER ; 
 int FUNC0 (char*,char*,int,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int cmb2 ; 
 int cmb3 ; 

__attribute__((used)) static BOOL FUNC8(HWND hDlg,
					int   nIDComboBox,
					char* PrinterName,
					char* PortName,
					LPDEVMODEA dm)
{
    int     i;
    int     NrOfEntries;
    char*   Names;
    WORD*   Words;
    DWORD   Sel, old_Sel;
    WORD    oldWord = 0, newWord = 0; /* DMPAPER_ and DMBIN_ start at 1 */
    int     NamesSize;
    int     fwCapability_Names;
    int     fwCapability_Words;

    FUNC6(" Printer: %s, Port: %s, ComboID: %d\n",PrinterName,PortName,nIDComboBox);

    /* query the dialog box for the current selected value */
    Sel = FUNC5(hDlg, nIDComboBox, CB_GETCURSEL, 0, 0);
    if(Sel != CB_ERR) {
        /* we enter here only if a different printer is selected after
         * the Print Setup dialog is opened. The current settings are
         * stored into the newly selected printer.
         */
        oldWord = FUNC5(hDlg, nIDComboBox, CB_GETITEMDATA,
                                      Sel, 0);
        if(oldWord >= DMPAPER_USER) /* DMPAPER_USER == DMBIN_USER */
            oldWord = 0; /* There's no point in trying to keep custom
                            paper / bin sizes across printers */
    }

    if (dm)
        newWord = (nIDComboBox == cmb2) ? dm->u1.s1.dmPaperSize : dm->u1.s1.dmDefaultSource;

    if (nIDComboBox == cmb2) {
         NamesSize          = 64;
         fwCapability_Names = DC_PAPERNAMES;
         fwCapability_Words = DC_PAPERS;
    } else {
         nIDComboBox        = cmb3;
         NamesSize          = 24;
         fwCapability_Names = DC_BINNAMES;
         fwCapability_Words = DC_BINS;
    }

    NrOfEntries = FUNC0(PrinterName, PortName,
                                      fwCapability_Names, NULL, dm);
    if (NrOfEntries == 0)
         FUNC7("no Name Entries found!\n");
    else if (NrOfEntries < 0)
         return FALSE;

    if(FUNC0(PrinterName, PortName, fwCapability_Words, NULL, dm)
       != NrOfEntries) {
        FUNC1("Number of caps is different\n");
	NrOfEntries = 0;
    }

    Names = FUNC3(FUNC2(),0, NrOfEntries*sizeof(char)*NamesSize);
    Words = FUNC3(FUNC2(),0, NrOfEntries*sizeof(WORD));
    FUNC0(PrinterName, PortName, fwCapability_Names, Names, dm);
    NrOfEntries = FUNC0(PrinterName, PortName,
				      fwCapability_Words, (LPSTR)Words, dm);

    /* reset any current content in the combobox */
    FUNC5(hDlg, nIDComboBox, CB_RESETCONTENT, 0, 0);

    /* store new content */
    for (i = 0; i < NrOfEntries; i++) {
        DWORD pos = FUNC5(hDlg, nIDComboBox, CB_ADDSTRING, 0,
					(LPARAM)(&Names[i*NamesSize]) );
	FUNC5(hDlg, nIDComboBox, CB_SETITEMDATA, pos,
			    Words[i]);
    }

    /* Look for old selection or the new default.
       Can't do this is previous loop since item order will change as more items are added */
    Sel = 0;
    old_Sel = NrOfEntries;
    for (i = 0; i < NrOfEntries; i++) {
        if(FUNC5(hDlg, nIDComboBox, CB_GETITEMDATA, i, 0) ==
	   oldWord) {
	    old_Sel = i;
	    break;
	}
        if(FUNC5(hDlg, nIDComboBox, CB_GETITEMDATA, i, 0) == newWord)
	    Sel = i;
    }

    if(old_Sel < NrOfEntries)
    {
        if (dm)
        {
            if(nIDComboBox == cmb2)
                dm->u1.s1.dmPaperSize = oldWord;
            else
                dm->u1.s1.dmDefaultSource = oldWord;
        }
        Sel = old_Sel;
    }

    FUNC5(hDlg, nIDComboBox, CB_SETCURSEL, Sel, 0);

    FUNC4(FUNC2(),0,Words);
    FUNC4(FUNC2(),0,Names);
    return TRUE;
}