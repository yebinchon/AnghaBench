
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sThousand; void* sThousand_len; int sDecimal; void* sDecimal_len; } ;


 int GetLocaleInfo (int ,int ,int ,int ) ;
 int LOCALE_SDECIMAL ;
 int LOCALE_STHOUSAND ;
 int LOCALE_USER_DEFAULT ;
 int SIZEOF (int ) ;
 int _T (char*) ;
 int _tcscpy (int ,int ) ;
 void* _tcslen (int ) ;
 TYPE_1__ calc ;

__attribute__((used)) static void UpdateNumberIntl(void)
{

    if (!GetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL, calc.sDecimal, SIZEOF(calc.sDecimal)))
        _tcscpy(calc.sDecimal, _T("."));

    if (!GetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_STHOUSAND, calc.sThousand, SIZEOF(calc.sThousand)))
        _tcscpy(calc.sThousand, _T(","));


    calc.sDecimal_len = _tcslen(calc.sDecimal);
    calc.sThousand_len = _tcslen(calc.sThousand);
}
