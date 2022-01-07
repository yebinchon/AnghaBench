
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int GetLocaleInfoW (int ,int ,char*,int) ;
 int LOCALE_STHOUSAND ;
 int LOCALE_USER_DEFAULT ;

__attribute__((used)) static WCHAR UPDOWN_GetThousandSep(void)
{
    WCHAR sep[2];

    if(GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_STHOUSAND, sep, 2) != 1)
        sep[0] = ',';

    return sep[0];
}
