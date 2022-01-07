
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lex_data {int cache_used; int * cache_string; int window; int macroptr; } ;
typedef int WINHELP_WINDOW ;
struct TYPE_2__ {int proto; int function; } ;
typedef int LPCSTR ;
typedef int BOOL ;




 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int MACRO_CallVoidFunc (int ,int ) ;
 int TRUE ;

 int WINE_TRACE (char*,int ) ;
 int WINE_WARN (char*,int ) ;
 int WINHELP_GrabWindow (int *) ;
 int WINHELP_ReleaseWindow (int *) ;
 int YY_FLUSH_BUFFER ;
 int debugstr_a (int ) ;
 struct lex_data* lex_data ;
 int memset (struct lex_data*,int ,int) ;
 int ts (int) ;
 int yylex () ;
 TYPE_1__ yylval ;

BOOL MACRO_ExecuteMacro(WINHELP_WINDOW* window, LPCSTR macro)
{
    struct lex_data curr_lex_data, *prev_lex_data;
    BOOL ret = TRUE;
    int t;

    WINE_TRACE("%s\n", debugstr_a(macro));

    prev_lex_data = lex_data;
    lex_data = &curr_lex_data;

    memset(lex_data, 0, sizeof(*lex_data));
    lex_data->macroptr = macro;
    lex_data->window = WINHELP_GrabWindow(window);

    while ((t = yylex()) != 129)
    {
        switch (t)
        {
        case 128:
            WINE_TRACE("got type void func(%s)\n", debugstr_a(yylval.proto));
            MACRO_CallVoidFunc(yylval.function, yylval.proto);
            break;
        case 130:
            WINE_WARN("got type bool func(%s)\n", debugstr_a(yylval.proto));
            break;
        default:
            WINE_WARN("got unexpected type %s\n", debugstr_a(ts(t)));
            YY_FLUSH_BUFFER;
            ret = FALSE;
            goto done;
        }
        switch (t = yylex())
        {
        case 129: goto done;
        case ';': break;
        default: ret = FALSE; YY_FLUSH_BUFFER; goto done;
        }
    }

done:
    for (t = 0; t < lex_data->cache_used; t++)
        HeapFree(GetProcessHeap(), 0, lex_data->cache_string[t]);
    lex_data = prev_lex_data;
    WINHELP_ReleaseWindow(window);

    return ret;
}
