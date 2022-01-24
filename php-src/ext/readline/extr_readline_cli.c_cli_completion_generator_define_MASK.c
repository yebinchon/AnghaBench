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
typedef  int /*<<< orphan*/  zend_class_entry ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 char* FUNC0 (char const*,size_t,int*,int /*<<< orphan*/ *,void**) ; 
 char rl_completion_append_character ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(const char *text, size_t textlen, int *state, HashTable *ht) /* {{{ */
{
	zend_class_entry **pce;
	char *retval = FUNC0(text, textlen, state, ht, (void**)&pce);
	if (retval) {
		rl_completion_append_character = '\0';
		retval = FUNC1(retval);
	}

	return retval;
}