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
struct TYPE_2__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ET_ERROR ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  PyExc_KeyboardInterrupt ; 
 TYPE_1__* current_exception ; 
 void* did_emsg ; 
 scalar_t__ did_throw ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 void* got_int ; 
 int /*<<< orphan*/ ** msg_list ; 
 int /*<<< orphan*/  trylevel ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(void)
{
    --trylevel;
    /* Without this it stops processing all subsequent VimL commands and
     * generates strange error messages if I e.g. try calling Test() in a
     * cycle */
    did_emsg = FALSE;
    /* Keyboard interrupt should be preferred over anything else */
    if (got_int)
    {
	if (did_throw)
	    FUNC4();
	got_int = FALSE;
	FUNC2(PyExc_KeyboardInterrupt);
	return -1;
    }
    else if (msg_list != NULL && *msg_list != NULL)
    {
	int	should_free;
	char_u	*msg;

	msg = FUNC6(*msg_list, ET_ERROR, NULL, &should_free);

	if (msg == NULL)
	{
	    FUNC0();
	    return -1;
	}

	FUNC3((char *) msg);

	FUNC5();

	if (should_free)
	    FUNC7(msg);

	return -1;
    }
    else if (!did_throw)
	return (FUNC1() ? -1 : 0);
    /* Python exception is preferred over vim one; unlikely to occur though */
    else if (FUNC1())
    {
	FUNC4();
	return -1;
    }
    /* Finally transform VimL exception to python one */
    else
    {
	FUNC3((char *)current_exception->value);
	FUNC4();
	return -1;
    }
}