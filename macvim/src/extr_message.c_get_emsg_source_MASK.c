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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * sourcing_name ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char_u *
FUNC5()
{
    char_u	*Buf, *p;

    if (sourcing_name != NULL && FUNC3())
    {
	p = (char_u *)FUNC1("Error detected while processing %s:");
	Buf = FUNC2((unsigned)(FUNC0(sourcing_name) + FUNC0(p)));
	if (Buf != NULL)
	    FUNC4((char *)Buf, (char *)p, sourcing_name);
	return Buf;
    }
    return NULL;
}