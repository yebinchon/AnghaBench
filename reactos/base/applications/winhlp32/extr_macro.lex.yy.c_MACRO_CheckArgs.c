
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; int function; int integer; scalar_t__ string; } ;


 int BOOL_FUNCTION ;
 int INTEGER ;
 void* LongToPtr (int ) ;
 int MACRO_CallBoolFunc (int ,int ,void**) ;
 int STRING ;
 int WINE_FIXME (char*,unsigned int) ;
 int WINE_TRACE (char*,int ,...) ;
 int WINE_WARN (char*,...) ;
 int debugstr_a (char const*) ;
 unsigned int strlen (char const*) ;
 char const* ts (int) ;
 char yylex () ;
 TYPE_1__ yylval ;

__attribute__((used)) static int MACRO_CheckArgs(void* pa[], unsigned max, const char* args)
{
    int t;
    unsigned int len = 0, idx = 0;

    WINE_TRACE("Checking %s\n", debugstr_a(args));

    if (yylex() != '(') {WINE_WARN("missing (\n");return -1;}

    if (*args)
    {
        len = strlen(args);
        for (;;)
        {
            t = yylex();
            WINE_TRACE("Got %s <=> %c\n", debugstr_a(ts(t)), *args);

            switch (*args)
            {
            case 'S':
                if (t != STRING)
                {WINE_WARN("missing S\n");return -1;}
                pa[idx] = (void*)yylval.string;
                break;
            case 'U':
            case 'I':
                if (t != INTEGER)
                {WINE_WARN("missing U\n");return -1;}
                pa[idx] = LongToPtr(yylval.integer);
                break;
            case 'B':
                if (t != BOOL_FUNCTION)
                {WINE_WARN("missing B\n");return -1;}
                if (MACRO_CallBoolFunc(yylval.function, yylval.proto, &pa[idx]) == 0)
                    return -1;
                break;
            default:
                WINE_WARN("unexpected %s while args is %c\n", debugstr_a(ts(t)), *args);
                return -1;
            }
            idx++;
            if (*++args == '\0') break;
            t = yylex();
            if (t == ')') goto CheckArgs_end;
            if (t != ',') {WINE_WARN("missing ,\n");return -1;}
            if (idx >= max) {WINE_FIXME("stack overflow (%d)\n", max);return -1;}
        }
    }
    if (yylex() != ')') {WINE_WARN("missing )\n");return -1;}

CheckArgs_end:
    while (len > idx) pa[--len] = ((void*)0);
    return idx;
}
