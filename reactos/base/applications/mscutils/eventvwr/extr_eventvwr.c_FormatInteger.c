
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nf ;
typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_4__ {int* lpDecimalSep; int* lpThousandSep; int Grouping; } ;
typedef TYPE_1__ NUMBERFMTW ;
typedef int LPWSTR ;
typedef char* LONGLONG ;
typedef size_t INT ;


 size_t GetLocaleInfoW (int ,int ,int*,int ) ;
 size_t GetNumberFormatW (int ,int ,int*,TYPE_1__*,int ,size_t) ;
 int LOCALE_SDECIMAL ;
 int LOCALE_SGROUPING ;
 int LOCALE_STHOUSAND ;
 int LOCALE_USER_DEFAULT ;
 int ZeroMemory (TYPE_1__*,int) ;
 int _countof (int*) ;
 int swprintf (int*,char*,char*) ;

UINT
FormatInteger(LONGLONG Num, LPWSTR pwszResult, UINT cchResultMax)
{
    WCHAR wszNumber[24];
    WCHAR wszDecimalSep[8], wszThousandSep[8];
    NUMBERFMTW nf;
    WCHAR wszGrouping[12];
    INT cchGrouping;
    INT cchResult;
    INT i;


    swprintf(wszNumber, L"%I64u", Num);


    GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL, wszDecimalSep, _countof(wszDecimalSep));
    GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_STHOUSAND, wszThousandSep, _countof(wszThousandSep));


    ZeroMemory(&nf, sizeof(nf));
    nf.lpDecimalSep = wszDecimalSep;
    nf.lpThousandSep = wszThousandSep;


    cchGrouping = GetLocaleInfoW(LOCALE_USER_DEFAULT,
                                 LOCALE_SGROUPING,
                                 wszGrouping,
                                 _countof(wszGrouping));


    for (i = 0; i < cchGrouping; i++)
    {
        WCHAR wch = wszGrouping[i];

        if (wch >= L'0' && wch <= L'9')
            nf.Grouping = nf.Grouping * 10 + (wch - L'0');
        else if (wch != L';')
            break;
    }

    if ((nf.Grouping % 10) == 0)
        nf.Grouping /= 10;
    else
        nf.Grouping *= 10;


    cchResult = GetNumberFormatW(LOCALE_USER_DEFAULT,
                                 0,
                                 wszNumber,
                                 &nf,
                                 pwszResult,
                                 cchResultMax);

    if (!cchResult)
        return 0;


    return cchResult - 1;
}
