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
typedef  int /*<<< orphan*/  zend_string ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 

zend_string *FUNC4(const zend_string* hash) {
	const char *ident, *ident_end;

	if (!hash || FUNC0(hash) < 3) {
		/* Minimum prefix: "$x$" */
		return NULL;
	}

	ident = FUNC1(hash) + 1;
	ident_end = FUNC2(ident, '$');
	if (!ident_end) {
		/* No terminating '$' */
		return NULL;
	}

	return FUNC3(ident, ident_end - ident, 0);
}