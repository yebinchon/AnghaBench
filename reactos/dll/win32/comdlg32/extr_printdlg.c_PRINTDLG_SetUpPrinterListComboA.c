
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {scalar_t__ pPrinterName; } ;
typedef TYPE_1__* LPPRINTER_INFO_2A ;
typedef int * LPCSTR ;
typedef int * LPBYTE ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int HWND ;
typedef size_t DWORD ;


 size_t ARRAY_SIZE (char*) ;
 int CB_ADDSTRING ;
 size_t CB_ERR ;
 int CB_FINDSTRINGEXACT ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int EnumPrintersA (int ,int *,int,int *,size_t,size_t*,size_t*) ;
 int FIXME (char*) ;
 int GetDefaultPrinterA (char*,size_t*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int PRINTER_ENUM_LOCAL ;
 size_t SendDlgItemMessageA (int ,int ,int ,size_t,int ) ;
 int WARN (char*,int ) ;
 int debugstr_a (int *) ;

__attribute__((used)) static INT PRINTDLG_SetUpPrinterListComboA(HWND hDlg, UINT id, LPCSTR name)
{
    DWORD needed, num;
    INT i;
    LPPRINTER_INFO_2A pi;
    EnumPrintersA(PRINTER_ENUM_LOCAL, ((void*)0), 2, ((void*)0), 0, &needed, &num);
    pi = HeapAlloc(GetProcessHeap(), 0, needed);
    EnumPrintersA(PRINTER_ENUM_LOCAL, ((void*)0), 2, (LPBYTE)pi, needed, &needed,
    &num);

    SendDlgItemMessageA(hDlg, id, CB_RESETCONTENT, 0, 0);

    for(i = 0; i < num; i++) {
        SendDlgItemMessageA(hDlg, id, CB_ADDSTRING, 0,
       (LPARAM)pi[i].pPrinterName );
    }
    HeapFree(GetProcessHeap(), 0, pi);
    if(!name ||
       (i = SendDlgItemMessageA(hDlg, id, CB_FINDSTRINGEXACT, -1,
    (LPARAM)name)) == CB_ERR) {

        char buf[260];
        DWORD dwBufLen = ARRAY_SIZE(buf);
        if (name != ((void*)0))
            WARN("Can't find %s in printer list so trying to find default\n",
         debugstr_a(name));
 if(!GetDefaultPrinterA(buf, &dwBufLen))
     return num;
 i = SendDlgItemMessageA(hDlg, id, CB_FINDSTRINGEXACT, -1, (LPARAM)buf);
 if(i == CB_ERR)
     FIXME("Can't find default printer in printer list\n");
    }
    SendDlgItemMessageA(hDlg, id, CB_SETCURSEL, i, 0);
    return num;
}
