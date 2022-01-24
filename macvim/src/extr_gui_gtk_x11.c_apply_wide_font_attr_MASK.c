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
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_2__ {int /*<<< orphan*/  wide_font; } ;
typedef  int /*<<< orphan*/  PangoAttrList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(char_u *s, int len, PangoAttrList *attr_list)
{
    char_u  *start = NULL;
    char_u  *p;
    int	    uc;

    for (p = s; p < s + len; p += FUNC2(*p))
    {
	uc = FUNC5(p);

	if (start == NULL)
	{
	    if (uc >= 0x80 && FUNC3(uc) == 2)
		start = p;
	}
	else if (uc < 0x80 /* optimization shortcut */
		 || (FUNC3(uc) != 2 && !FUNC4(uc)))
	{
	    FUNC0(FUNC1(gui.wide_font),
			      attr_list, start - s, p - s);
	    start = NULL;
	}
    }

    if (start != NULL)
	FUNC0(FUNC1(gui.wide_font),
			  attr_list, start - s, len);
}