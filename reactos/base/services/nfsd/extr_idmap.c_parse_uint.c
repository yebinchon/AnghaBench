
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef scalar_t__ UINT ;
typedef char const* PCHAR ;
typedef int BOOL ;


 scalar_t__ ERANGE ;
 int FALSE ;
 int TRUE ;
 scalar_t__ const ULONG_MAX ;
 scalar_t__ errno ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strtoul (char const*,char const**,int) ;

__attribute__((used)) static BOOL parse_uint(
    const char *str,
    UINT *id_out)
{
    PCHAR endp;
    const UINT id = strtoul(str, &endp, 10);


    if ((endp - str) < (ptrdiff_t)strlen(str))
        return FALSE;


    if (id == ULONG_MAX && errno == ERANGE)
        return FALSE;

    *id_out = id;
    return TRUE;
}
