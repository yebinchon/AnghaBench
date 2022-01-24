#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct format_args {int /*<<< orphan*/  last; scalar_t__ list; } ;
typedef  char WCHAR ;
typedef  char ULONG_PTR ;
typedef  char* LPWSTR ;
typedef  char* LPCWSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,char*,int) ; 
 char FUNC4 (int,int,struct format_args*) ; 
 scalar_t__ FUNC5 (char) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (char*,int,char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static LPCWSTR FUNC11( BOOL unicode_caller, int insert, LPCWSTR format,
                              DWORD flags, struct format_args *args,
                              LPWSTR *result )
{
    static const WCHAR fmt_u[] = {'%','u',0};
    WCHAR *wstring = NULL, *p, fmt[256];
    ULONG_PTR arg;
    int size;

    if (*format != '!')  /* simple string */
    {
        arg = FUNC4( insert, flags, args );
        if (unicode_caller || !arg)
        {
            static const WCHAR nullW[] = {'(','n','u','l','l',')',0};
            const WCHAR *str = (const WCHAR *)arg;

            if (!str) str = nullW;
            *result = FUNC1( FUNC0(), 0, (FUNC10(str) + 1) * sizeof(WCHAR) );
            FUNC9( *result, str );
        }
        else
        {
            const char *str = (const char *)arg;
            DWORD length = FUNC3( CP_ACP, 0, str, -1, NULL, 0 );
            *result = FUNC1( FUNC0(), 0, length * sizeof(WCHAR) );
            FUNC3( CP_ACP, 0, str, -1, *result, length );
        }
        return format;
    }

    format++;
    p = fmt;
    *p++ = '%';

    while (*format == '0' ||
           *format == '+' ||
           *format == '-' ||
           *format == ' ' ||
           *format == '*' ||
           *format == '#')
    {
        if (*format == '*')
        {
            p += FUNC8( p, fmt_u, FUNC4( insert, flags, args ));
            insert = -1;
            format++;
        }
        else *p++ = *format++;
    }
    while (FUNC5(*format)) *p++ = *format++;

    if (*format == '.')
    {
        *p++ = *format++;
        if (*format == '*')
        {
            p += FUNC8( p, fmt_u, FUNC4( insert, flags, args ));
            insert = -1;
            format++;
        }
        else
            while (FUNC5(*format)) *p++ = *format++;
    }

    /* replicate MS bug: drop an argument when using va_list with width/precision */
    if (insert == -1 && args->list) args->last--;
    arg = FUNC4( insert, flags, args );

    /* check for ascii string format */
    if ((format[0] == 'h' && format[1] == 's') ||
        (format[0] == 'h' && format[1] == 'S') ||
        (unicode_caller && format[0] == 'S') ||
        (!unicode_caller && format[0] == 's'))
    {
        DWORD len = FUNC3( CP_ACP, 0, (char *)arg, -1, NULL, 0 );
        wstring = FUNC1( FUNC0(), 0, len * sizeof(WCHAR) );
        FUNC3( CP_ACP, 0, (char *)arg, -1, wstring, len );
        arg = (ULONG_PTR)wstring;
        *p++ = 's';
    }
    /* check for ascii character format */
    else if ((format[0] == 'h' && format[1] == 'c') ||
             (format[0] == 'h' && format[1] == 'C') ||
             (unicode_caller && format[0] == 'C') ||
             (!unicode_caller && format[0] == 'c'))
    {
        char ch = arg;
        wstring = FUNC1( FUNC0(), 0, 2 * sizeof(WCHAR) );
        FUNC3( CP_ACP, 0, &ch, 1, wstring, 1 );
        wstring[1] = 0;
        arg = (ULONG_PTR)wstring;
        *p++ = 's';
    }
    /* check for wide string format */
    else if ((format[0] == 'l' && format[1] == 's') ||
             (format[0] == 'l' && format[1] == 'S') ||
             (format[0] == 'w' && format[1] == 's') ||
             (!unicode_caller && format[0] == 'S'))
    {
        *p++ = 's';
    }
    /* check for wide character format */
    else if ((format[0] == 'l' && format[1] == 'c') ||
             (format[0] == 'l' && format[1] == 'C') ||
             (format[0] == 'w' && format[1] == 'c') ||
             (!unicode_caller && format[0] == 'C'))
    {
        *p++ = 'c';
    }
    /* FIXME: handle I64 etc. */
    else while (*format && *format != '!') *p++ = *format++;

    *p = 0;
    size = 256;
    for (;;)
    {
        WCHAR *ret = FUNC1( FUNC0(), 0, size * sizeof(WCHAR) );
        int needed = FUNC7( ret, size, fmt, arg );
        if (needed == -1 || needed >= size)
        {
            FUNC2( FUNC0(), 0, ret );
            size = FUNC6( needed + 1, size * 2 );
        }
        else
        {
            *result = ret;
            break;
        }
    }

    while (*format && *format != '!') format++;
    if (*format == '!') format++;

    FUNC2( FUNC0(), 0, wstring );
    return format;
}