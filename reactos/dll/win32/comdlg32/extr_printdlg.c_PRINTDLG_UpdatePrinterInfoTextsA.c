
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Status; char* pDriverName; char* pLocation; char* pPortName; char* pComment; } ;
typedef TYPE_1__ PRINTER_INFO_2A ;
typedef int HWND ;


 int COMDLG32_hInstance ;
 int LoadStringA (int ,scalar_t__,char*,int) ;
 scalar_t__ PD32_PRINTER_STATUS_PAUSED ;
 scalar_t__ PD32_PRINTER_STATUS_READY ;
 int SetDlgItemTextA (int ,int ,char*) ;
 int stc11 ;
 int stc12 ;
 int stc13 ;
 int stc14 ;
 int strcat (char*,char*) ;

__attribute__((used)) static void PRINTDLG_UpdatePrinterInfoTextsA(HWND hDlg, const PRINTER_INFO_2A *pi)
{
    char StatusMsg[256];
    char ResourceString[256];
    int i;


    StatusMsg[0]='\0';


    for (i = 0; i < 25; i++) {
        if (pi->Status & (1<<i)) {
     LoadStringA(COMDLG32_hInstance, PD32_PRINTER_STATUS_PAUSED+i,
   ResourceString, 255);
     strcat(StatusMsg,ResourceString);
        }
    }



    LoadStringA(COMDLG32_hInstance, PD32_PRINTER_STATUS_READY,
  ResourceString, 255);
    strcat(StatusMsg,ResourceString);
    SetDlgItemTextA(hDlg, stc12, StatusMsg);


    SetDlgItemTextA(hDlg, stc11, pi->pDriverName);

    if (pi->pLocation != ((void*)0) && pi->pLocation[0] != '\0')
        SetDlgItemTextA(hDlg, stc14, pi->pLocation);
    else
        SetDlgItemTextA(hDlg, stc14, pi->pPortName);
    SetDlgItemTextA(hDlg, stc13, pi->pComment ? pi->pComment : "");
    return;
}
