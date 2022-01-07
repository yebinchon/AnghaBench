
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZE_MAX ;
 int strcat (char*,char const*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 int strncat (char*,char const*,int) ;
 char* strstr (char const*,char const*) ;

char *
searchandreplace(const char *tosearch, const char *searchfor, const char *replacewith)
{
    if (!tosearch || !searchfor || !replacewith)
    {
        return ((void*)0);
    }

    size_t tosearchlen = strlen(tosearch);
    size_t replacewithlen = strlen(replacewith);
    size_t templen = tosearchlen * replacewithlen;

    if (tosearchlen == 0 || strlen(searchfor) == 0 || replacewithlen == 0)
    {
        return ((void*)0);
    }

    bool is_potential_integer_overflow = (templen == SIZE_MAX) || (templen / tosearchlen != replacewithlen);

    if (is_potential_integer_overflow)
    {
        return ((void*)0);
    }



    const char *searching = tosearch;
    char *scratch;

    char temp[templen+1];
    temp[0] = 0;

    scratch = strstr(searching,searchfor);
    if (!scratch)
    {
        return strdup(tosearch);
    }

    while (scratch)
    {
        strncat(temp,searching,scratch-searching);
        strcat(temp,replacewith);

        searching = scratch+strlen(searchfor);
        scratch = strstr(searching,searchfor);
    }
    return strdup(temp);
}
