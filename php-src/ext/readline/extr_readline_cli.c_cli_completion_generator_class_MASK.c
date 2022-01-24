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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  class_table ; 
 char* FUNC2 (char const*,size_t,int*,int /*<<< orphan*/ ,void**) ; 
 char rl_completion_append_character ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC4(const char *text, size_t textlen, int *state) /* {{{ */
{
	zend_class_entry *ce;
	char *retval = FUNC2(text, textlen, state, FUNC0(class_table), (void**)&ce);
	if (retval) {
		rl_completion_append_character = '\0';
		retval = FUNC3(FUNC1(ce->name));
	}

	return retval;
}