
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_6__ {scalar_t__ dmPaperSize; scalar_t__ dmDefaultSource; } ;
struct TYPE_7__ {TYPE_1__ s1; } ;
struct TYPE_8__ {TYPE_2__ u1; } ;
typedef char* LPSTR ;
typedef TYPE_3__* LPDEVMODEA ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef int DWORD ;
typedef int BOOL ;


 int CB_ADDSTRING ;
 int CB_ERR ;
 int CB_GETCURSEL ;
 int CB_GETITEMDATA ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int DC_BINNAMES ;
 int DC_BINS ;
 int DC_PAPERNAMES ;
 int DC_PAPERS ;
 scalar_t__ DMPAPER_USER ;
 int DeviceCapabilitiesA (char*,char*,int,char*,TYPE_3__*) ;
 int ERR (char*) ;
 int FALSE ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,...) ;
 scalar_t__ SendDlgItemMessageA (int ,int,int ,int,scalar_t__) ;
 int TRACE (char*,char*,char*,int) ;
 int TRUE ;
 int WARN (char*) ;
 int cmb2 ;
 int cmb3 ;

__attribute__((used)) static BOOL PRINTDLG_SetUpPaperComboBoxA(HWND hDlg,
     int nIDComboBox,
     char* PrinterName,
     char* PortName,
     LPDEVMODEA dm)
{
    int i;
    int NrOfEntries;
    char* Names;
    WORD* Words;
    DWORD Sel, old_Sel;
    WORD oldWord = 0, newWord = 0;
    int NamesSize;
    int fwCapability_Names;
    int fwCapability_Words;

    TRACE(" Printer: %s, Port: %s, ComboID: %d\n",PrinterName,PortName,nIDComboBox);


    Sel = SendDlgItemMessageA(hDlg, nIDComboBox, CB_GETCURSEL, 0, 0);
    if(Sel != CB_ERR) {




        oldWord = SendDlgItemMessageA(hDlg, nIDComboBox, CB_GETITEMDATA,
                                      Sel, 0);
        if(oldWord >= DMPAPER_USER)
            oldWord = 0;

    }

    if (dm)
        newWord = (nIDComboBox == cmb2) ? dm->u1.s1.dmPaperSize : dm->u1.s1.dmDefaultSource;

    if (nIDComboBox == cmb2) {
         NamesSize = 64;
         fwCapability_Names = DC_PAPERNAMES;
         fwCapability_Words = DC_PAPERS;
    } else {
         nIDComboBox = cmb3;
         NamesSize = 24;
         fwCapability_Names = DC_BINNAMES;
         fwCapability_Words = DC_BINS;
    }

    NrOfEntries = DeviceCapabilitiesA(PrinterName, PortName,
                                      fwCapability_Names, ((void*)0), dm);
    if (NrOfEntries == 0)
         WARN("no Name Entries found!\n");
    else if (NrOfEntries < 0)
         return FALSE;

    if(DeviceCapabilitiesA(PrinterName, PortName, fwCapability_Words, ((void*)0), dm)
       != NrOfEntries) {
        ERR("Number of caps is different\n");
 NrOfEntries = 0;
    }

    Names = HeapAlloc(GetProcessHeap(),0, NrOfEntries*sizeof(char)*NamesSize);
    Words = HeapAlloc(GetProcessHeap(),0, NrOfEntries*sizeof(WORD));
    DeviceCapabilitiesA(PrinterName, PortName, fwCapability_Names, Names, dm);
    NrOfEntries = DeviceCapabilitiesA(PrinterName, PortName,
          fwCapability_Words, (LPSTR)Words, dm);


    SendDlgItemMessageA(hDlg, nIDComboBox, CB_RESETCONTENT, 0, 0);


    for (i = 0; i < NrOfEntries; i++) {
        DWORD pos = SendDlgItemMessageA(hDlg, nIDComboBox, CB_ADDSTRING, 0,
     (LPARAM)(&Names[i*NamesSize]) );
 SendDlgItemMessageA(hDlg, nIDComboBox, CB_SETITEMDATA, pos,
       Words[i]);
    }



    Sel = 0;
    old_Sel = NrOfEntries;
    for (i = 0; i < NrOfEntries; i++) {
        if(SendDlgItemMessageA(hDlg, nIDComboBox, CB_GETITEMDATA, i, 0) ==
    oldWord) {
     old_Sel = i;
     break;
 }
        if(SendDlgItemMessageA(hDlg, nIDComboBox, CB_GETITEMDATA, i, 0) == newWord)
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

    SendDlgItemMessageA(hDlg, nIDComboBox, CB_SETCURSEL, Sel, 0);

    HeapFree(GetProcessHeap(),0,Words);
    HeapFree(GetProcessHeap(),0,Names);
    return TRUE;
}
