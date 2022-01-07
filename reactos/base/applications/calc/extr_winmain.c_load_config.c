
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int osvi ;
struct TYPE_5__ {void* is_memory; void* usesep; int layout; } ;
struct TYPE_4__ {int dwOSVersionInfoSize; int dwPlatformId; } ;
typedef TYPE_1__ OSVERSIONINFO ;


 void* CALC_LAYOUT_STANDARD ;
 void* FALSE ;
 int GetProfileInt (int ,int ,void*) ;
 int GetVersionEx (TYPE_1__*) ;
 int LoadRegInt (int ,int ,void*) ;
 void* TRUE ;
 int UpdateNumberIntl () ;


 int _T (char*) ;
 TYPE_2__ calc ;

__attribute__((used)) static void load_config(void)
{
    OSVERSIONINFO osvi;

    osvi.dwOSVersionInfoSize = sizeof(osvi);
    GetVersionEx(&osvi);

    switch (osvi.dwPlatformId) {
    case 128:
    case 129:

        calc.layout = GetProfileInt(_T("SciCalc"), _T("layout"), CALC_LAYOUT_STANDARD);


        calc.usesep = (GetProfileInt(_T("SciCalc"), _T("UseSep"), FALSE)) ? TRUE : FALSE;
        break;

    default:

        calc.layout = LoadRegInt(_T("SOFTWARE\\Microsoft\\Calc"), _T("layout"), CALC_LAYOUT_STANDARD);


        calc.usesep = (LoadRegInt(_T("SOFTWARE\\Microsoft\\Calc"), _T("UseSep"), FALSE)) ? TRUE : FALSE;
        break;
    }


    calc.is_memory = FALSE;


    UpdateNumberIntl();
}
