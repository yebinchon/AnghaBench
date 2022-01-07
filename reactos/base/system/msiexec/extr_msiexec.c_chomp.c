
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum chomp_state { ____Placeholder_chomp_state } chomp_state ;
typedef char WCHAR ;
typedef int BOOL ;





 int FALSE ;
 int TRUE ;

__attribute__((used)) static int chomp( const WCHAR *in, WCHAR *out )
{
    enum chomp_state state = 129;
    const WCHAR *p;
    int count = 1;
    BOOL ignore;

    for (p = in; *p; p++)
    {
        ignore = TRUE;
        switch (state)
        {
        case 128:
            switch (*p)
            {
            case ' ':
                break;
            case '"':
                state = 130;
                count++;
                break;
            default:
                count++;
                ignore = FALSE;
                state = 129;
            }
            break;

        case 129:
            switch (*p)
            {
            case '"':
                state = 130;
                break;
            case ' ':
                state = 128;
                if (out) *out++ = 0;
                break;
            default:
                if (p > in && p[-1] == '"')
                {
                    if (out) *out++ = 0;
                    count++;
                }
                ignore = FALSE;
            }
            break;

        case 130:
            switch (*p)
            {
            case '"':
                state = 129;
                break;
            default:
                ignore = FALSE;
            }
            break;
        }
        if (!ignore && out) *out++ = *p;
    }
    if (out) *out = 0;
    return count;
}
