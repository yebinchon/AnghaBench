
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PWSTR ;
typedef int DWORD ;


 scalar_t__ NoHeader ;
 scalar_t__ PrintFormat ;
 char* WhoamiLoadRcString (int) ;
 scalar_t__ csv ;
 int wcslen (char*) ;
 int wprintf (char*,...) ;

void WhoamiPrintHeader(int HeaderId)
{
    PWSTR Header = WhoamiLoadRcString(HeaderId);
    DWORD Length = wcslen(Header);

    if (NoHeader || PrintFormat == csv)
        return;

    wprintf(L"\n%s\n", Header);

    while (Length--)
        wprintf(L"-");

    wprintf(L"\n\n");
}
