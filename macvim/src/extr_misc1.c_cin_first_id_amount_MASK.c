#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ col; int /*<<< orphan*/  lnum; } ;
typedef  TYPE_2__ pos_T ;
typedef  scalar_t__ colnr_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_6__ {int /*<<< orphan*/  lnum; } ;
struct TYPE_8__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* curwin ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8()
{
    char_u	*line, *p, *s;
    int		len;
    pos_T	fp;
    colnr_T	col;

    line = FUNC3();
    p = FUNC5(line);
    len = (int)(FUNC4(p) - p);
    if (len == 6 && FUNC0(p, "static", 6) == 0)
    {
	p = FUNC5(p + 6);
	len = (int)(FUNC4(p) - p);
    }
    if (len == 6 && FUNC0(p, "struct", 6) == 0)
	p = FUNC5(p + 6);
    else if (len == 4 && FUNC0(p, "enum", 4) == 0)
	p = FUNC5(p + 4);
    else if ((len == 8 && FUNC0(p, "unsigned", 8) == 0)
	    || (len == 6 && FUNC0(p, "signed", 6) == 0))
    {
	s = FUNC5(p + len);
	if ((FUNC0(s, "int", 3) == 0 && FUNC7(s[3]))
		|| (FUNC0(s, "long", 4) == 0 && FUNC7(s[4]))
		|| (FUNC0(s, "short", 5) == 0 && FUNC7(s[5]))
		|| (FUNC0(s, "char", 4) == 0 && FUNC7(s[4])))
	    p = s;
    }
    for (len = 0; FUNC6(p[len]); ++len)
	;
    if (len == 0 || !FUNC7(p[len]) || FUNC1(p))
	return 0;

    p = FUNC5(p + len);
    fp.lnum = curwin->w_cursor.lnum;
    fp.col = (colnr_T)(p - line);
    FUNC2(curwin, &fp, &col, NULL, NULL);
    return (int)col;
}