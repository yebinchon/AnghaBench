
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int osvi ;
struct TYPE_5__ {int usesep; int layout; } ;
struct TYPE_4__ {int dwOSVersionInfoSize; int dwPlatformId; } ;
typedef int TCHAR ;
typedef TYPE_1__ OSVERSIONINFO ;


 int GetVersionEx (TYPE_1__*) ;
 int SaveRegInt (int *,int *,int ) ;
 int TRUE ;


 int WriteProfileString (int *,int *,int *) ;
 int * _T (char*) ;
 int _stprintf (int *,int *,int ) ;
 TYPE_2__ calc ;

__attribute__((used)) static void save_config(void)
{
    TCHAR buf[32];
    OSVERSIONINFO osvi;

    osvi.dwOSVersionInfoSize = sizeof(osvi);
    GetVersionEx(&osvi);

    switch (osvi.dwPlatformId) {
    case 128:
    case 129:
        _stprintf(buf, _T("%lu"), calc.layout);
        WriteProfileString(_T("SciCalc"), _T("layout"), buf);
        WriteProfileString(_T("SciCalc"), _T("UseSep"), (calc.usesep==TRUE) ? _T("1") : _T("0"));
        break;

    default:
        SaveRegInt(_T("SOFTWARE\\Microsoft\\Calc"), _T("layout"), calc.layout);
        SaveRegInt(_T("SOFTWARE\\Microsoft\\Calc"), _T("UseSep"), calc.usesep);
        break;
    }
}
