
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* heap_alloc (unsigned int) ;
 int heap_free (char*) ;

__attribute__((used)) static WCHAR *parse_value( const WCHAR *str, unsigned int len )
{
    WCHAR *ret;
    const WCHAR *p = str;
    BOOL quoted = FALSE;
    unsigned int i = 0;

    if (!(ret = heap_alloc( (len + 1) * sizeof(WCHAR) ))) return ((void*)0);
    if (*p == '\"')
    {
        quoted = TRUE;
        p++;
    }
    while (*p && *p != '\"') ret[i++] = *p++;
    if ((quoted && *p != '\"') || (!quoted && *p == '\"'))
    {
        heap_free( ret );
        return ((void*)0);
    }
    ret[i] = 0;
    return ret;
}
