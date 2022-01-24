#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lex_data {int cache_used; int /*<<< orphan*/ * cache_string; int /*<<< orphan*/  window; int /*<<< orphan*/  macroptr; } ;
typedef  int /*<<< orphan*/  WINHELP_WINDOW ;
struct TYPE_2__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  function; } ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  BOOL_FUNCTION 130 
#define  EMPTY 129 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
#define  VOID_FUNCTION 128 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  YY_FLUSH_BUFFER ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct lex_data* lex_data ; 
 int /*<<< orphan*/  FUNC8 (struct lex_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 () ; 
 TYPE_1__ yylval ; 

BOOL FUNC11(WINHELP_WINDOW* window, LPCSTR macro)
{
    struct lex_data     curr_lex_data, *prev_lex_data;
    BOOL ret = TRUE;
    int t;

    FUNC3("%s\n", FUNC7(macro));

    prev_lex_data = lex_data;
    lex_data = &curr_lex_data;

    FUNC8(lex_data, 0, sizeof(*lex_data));
    lex_data->macroptr = macro;
    lex_data->window = FUNC5(window);

    while ((t = FUNC10()) != EMPTY)
    {
        switch (t)
        {
        case VOID_FUNCTION:
            FUNC3("got type void func(%s)\n", FUNC7(yylval.proto));
            FUNC2(yylval.function, yylval.proto);
            break;
        case BOOL_FUNCTION:
            FUNC4("got type bool func(%s)\n", FUNC7(yylval.proto));
            break;
        default:
            FUNC4("got unexpected type %s\n", FUNC7(FUNC9(t)));
            YY_FLUSH_BUFFER;
            ret = FALSE;
            goto done;
        }
        switch (t = FUNC10())
        {
        case EMPTY:     goto done;
        case ';':       break;
        default:        ret = FALSE; YY_FLUSH_BUFFER; goto done;
        }
    }

done:
    for (t = 0; t < lex_data->cache_used; t++)
        FUNC1(FUNC0(), 0, lex_data->cache_string[t]);
    lex_data = prev_lex_data;
    FUNC6(window);

    return ret;
}