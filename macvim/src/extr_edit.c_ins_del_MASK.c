#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BS_EOL ; 
 scalar_t__ FAIL ; 
 void* FALSE ; 
 int /*<<< orphan*/  K_DEL ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* can_si ; 
 void* can_si_back ; 
 TYPE_2__* curwin ; 
 scalar_t__ FUNC2 (void*) ; 
 void* did_ai ; 
 void* did_si ; 
 scalar_t__ FUNC3 (int,void*,int /*<<< orphan*/ ,void*,void*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7()
{
    int	    temp;

    if (FUNC5() == FAIL)
	return;
    if (FUNC4() == NUL)		/* delete newline */
    {
	temp = curwin->w_cursor.col;
	if (!FUNC1(BS_EOL)		/* only if "eol" included */
		|| FUNC3(2, FALSE, TRUE, FALSE, FALSE) == FAIL)
	    FUNC6();
	else
	    curwin->w_cursor.col = temp;
    }
    else if (FUNC2(FALSE) == FAIL)	/* delete char under cursor */
	FUNC6();
    did_ai = FALSE;
#ifdef FEAT_SMARTINDENT
    did_si = FALSE;
    can_si = FALSE;
    can_si_back = FALSE;
#endif
    FUNC0(K_DEL);
}