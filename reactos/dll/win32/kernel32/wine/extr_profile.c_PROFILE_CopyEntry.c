
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;
typedef char* LPCWSTR ;
typedef scalar_t__ BOOL ;


 int lstrcpynW (char*,char*,int) ;
 int lstrlenW (char*) ;
 int strlenW (char*) ;

__attribute__((used)) static void PROFILE_CopyEntry( LPWSTR buffer, LPCWSTR value, int len,
                               BOOL strip_quote )
{
    WCHAR quote = '\0';

    if(!buffer) return;

    if (strip_quote && ((*value == '\'') || (*value == '\"')))
    {
        if (value[1] && (value[strlenW(value)-1] == *value)) quote = *value++;
    }

    lstrcpynW( buffer, value, len );
    if (quote && (len >= lstrlenW(value))) buffer[strlenW(buffer)-1] = '\0';
}
