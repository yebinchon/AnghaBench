
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPDWORD ;
typedef int LPCSTR ;


 int strlen (int ) ;
 char* strstr (int ,int ) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static void ParseField(LPCSTR lpszDeviceKey, LPDWORD pField, LPCSTR lpszSubString)
{
    const char* ResultStr;
    ResultStr = strstr(lpszDeviceKey, lpszSubString);
    if (ResultStr != ((void*)0))
    {
        *pField = strtol(ResultStr + strlen(lpszSubString), ((void*)0), 16);
    }
}
