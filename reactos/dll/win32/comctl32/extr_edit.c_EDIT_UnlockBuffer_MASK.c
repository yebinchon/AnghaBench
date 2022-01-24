#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int lock_count; int /*<<< orphan*/ * text; scalar_t__ hloc32W; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ EDITSTATE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(EDITSTATE *es, BOOL force)
{
    /* Edit window might be already destroyed */
    if (!FUNC1(es->hwndSelf))
    {
        FUNC3("edit hwnd %p already destroyed\n", es->hwndSelf);
        return;
    }

    if (!es->lock_count)
    {
        FUNC0("lock_count == 0 ... please report\n");
        return;
    }

    if (!es->text)
    {
        FUNC0("es->text == 0 ... please report\n");
        return;
    }

    if (force || (es->lock_count == 1))
    {
        if (es->hloc32W)
        {
            FUNC2(es->hloc32W);
            es->text = NULL;
        }
        else
        {
            FUNC0("no buffer ... please report\n");
            return;
        }

    }

    es->lock_count--;
}