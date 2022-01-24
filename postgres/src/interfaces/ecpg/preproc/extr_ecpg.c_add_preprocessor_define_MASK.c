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
struct _defines {char* olddef; char* newdef; int pertinent; struct _defines* next; int /*<<< orphan*/ * used; } ;

/* Variables and functions */
 struct _defines* defines ; 
 struct _defines* FUNC0 (int) ; 
 void* FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void
FUNC3(char *define)
{
	struct _defines *pd = defines;
	char	   *ptr,
			   *define_copy = FUNC1(define);

	defines = FUNC0(sizeof(struct _defines));

	/* look for = sign */
	ptr = FUNC2(define_copy, '=');
	if (ptr != NULL)
	{
		char	   *tmp;

		/* symbol has a value */
		for (tmp = ptr - 1; *tmp == ' '; tmp--);
		tmp[1] = '\0';
		defines->olddef = define_copy;
		defines->newdef = ptr + 1;
	}
	else
	{
		defines->olddef = define_copy;
		defines->newdef = FUNC1("1");
	}
	defines->pertinent = true;
	defines->used = NULL;
	defines->next = pd;
}