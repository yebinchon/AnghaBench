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
typedef  scalar_t__ char_u ;

/* Variables and functions */
 int /*<<< orphan*/  LC_CTYPE ; 
 scalar_t__ NUL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 

__attribute__((used)) static char_u *
FUNC3()
{
    char_u	*p;

    p = FUNC2((char_u *)"LC_ALL");
    if (p == NULL || *p == NUL)
    {
	p = FUNC2((char_u *)"LC_MESSAGES");
	if (p == NULL || *p == NUL)
	{
	    p = FUNC2((char_u *)"LANG");
	    if (p != NULL && FUNC0(*p))
		p = NULL;		/* ignore something like "1043" */
# ifdef HAVE_GET_LOCALE_VAL
	    if (p == NULL || *p == NUL)
		p = (char_u *)get_locale_val(LC_CTYPE);
# endif
	}
    }
    return p;
}