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
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC7(const char *text, size_t textlen, int *state, HashTable *ht, void **pData) /* {{{ */
{
	zend_string *name;
	zend_ulong number;

	if (!(*state % 2)) {
		FUNC5(ht);
		(*state)++;
	}
	while(FUNC4(ht) == SUCCESS) {
		FUNC3(ht, &name, &number);
		if (!textlen || !FUNC1(FUNC0(name), text, textlen)) {
			if (pData) {
				*pData = FUNC2(ht);
			}
			FUNC6(ht);
			return FUNC0(name);
		}
		if (FUNC6(ht) == FAILURE) {
			break;
		}
	}
	(*state)++;
	return NULL;
}