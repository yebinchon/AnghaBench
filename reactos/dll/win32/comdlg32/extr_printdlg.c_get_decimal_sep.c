
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int ARRAY_SIZE (char*) ;
 int GetLocaleInfoW (int ,int ,char*,int ) ;
 int LOCALE_SDECIMAL ;
 int LOCALE_USER_DEFAULT ;

__attribute__((used)) static WCHAR get_decimal_sep(void)
{
    static WCHAR sep;

    if(!sep)
    {
        WCHAR buf[] = {'.', 0};
        GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL, buf, ARRAY_SIZE(buf));
        sep = buf[0];
    }
    return sep;
}
