
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;
typedef scalar_t__ BOOL ;


 char* wcschr (char*,char) ;

LPWSTR get_parameter(LPWSTR *params, WCHAR separator, BOOL quoted)
{
    LPWSTR token = *params;

    if (!*params)
        return ((void*)0);

    if (quoted && *token == '"')
    {
        WCHAR *end = wcschr(token + 1, '"');
        if (end)
        {
            *end = 0;
            *params = end + 1;
            token = token + 1;
        }
    }

    *params = wcschr(*params, separator);
    if (*params)
        *(*params)++ = '\0';

    if (!*token)
        return ((void*)0);

    return token;
}
