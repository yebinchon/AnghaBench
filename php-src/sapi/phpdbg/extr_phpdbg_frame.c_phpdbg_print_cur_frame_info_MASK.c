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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6() {
	const char *file_chr = FUNC3();
	zend_string *file = FUNC5(file_chr, FUNC2(file_chr), 0);

	FUNC1(file, 3, FUNC4() - 1, FUNC4());
	FUNC0(file);
}