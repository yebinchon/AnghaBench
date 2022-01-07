
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int system ;
typedef int LPWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int GetLocaleInfoW (int ,int,int ,int) ;
 int LOCALE_IMEASURE ;
 int LOCALE_RETURN_NUMBER ;
 int LOCALE_USER_DEFAULT ;

__attribute__((used)) static inline BOOL is_default_metric(void)
{
    DWORD system;
    GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_IMEASURE | LOCALE_RETURN_NUMBER,
                   (LPWSTR)&system, sizeof(system));
    return system == 0;
}
