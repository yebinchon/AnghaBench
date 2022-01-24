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
typedef  int WORD ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
WORD FUNC4(LPTSTR* arg_str)
{
    LPTSTR str;
    BOOL bBri;

    WORD tmp_clr,ret_clr;

    str = *arg_str;

    if (!(*str))
        return (WORD)-1;

    /* foreground */
    bBri = FALSE;

    if (FUNC1(str,FUNC0("bri"),3) == 0)
    {
        bBri = TRUE;

        if (FUNC2(&str))
            return (WORD)-1;
    }

    if ((tmp_clr = FUNC3(str)) == (WORD)-1)
    {
        return (WORD)-1;
    }

    /* skip spaces and "on" keyword */
    if (FUNC2(&str) || FUNC2(&str))
        return (WORD)-1;

    ret_clr = tmp_clr | (bBri << 3);

    /* background */
    bBri = FALSE;

    if (FUNC1(str,FUNC0("bri"),3) == 0 )
    {
        bBri = TRUE;

        if (FUNC2(&str))
            return (WORD)-1;
    }

    if ( (tmp_clr = FUNC3(str)) == (WORD)-1 )
        return (WORD)-1;

    FUNC2(&str);

    *arg_str = str;

    /* NOTE: See the note on SC_HEX in the StringToColor()'s description */
    return /* SC_HEX | */ ret_clr | tmp_clr << 4 | bBri << 7;
}