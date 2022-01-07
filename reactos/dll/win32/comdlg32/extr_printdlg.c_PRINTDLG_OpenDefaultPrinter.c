
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAY_SIZE (int *) ;
 int FALSE ;
 int GetDefaultPrinterW (int *,int *) ;
 int OpenPrinterW (int *,int *,int *) ;
 int WARN (char*,int ) ;
 int debugstr_w (int *) ;

__attribute__((used)) static BOOL PRINTDLG_OpenDefaultPrinter(HANDLE *hprn)
{
    WCHAR buf[260];
    DWORD dwBufLen = ARRAY_SIZE(buf);
    BOOL res;
    if(!GetDefaultPrinterW(buf, &dwBufLen))
        return FALSE;
    res = OpenPrinterW(buf, hprn, ((void*)0));
    if (!res)
        WARN("Could not open printer %s\n", debugstr_w(buf));
    return res;
}
