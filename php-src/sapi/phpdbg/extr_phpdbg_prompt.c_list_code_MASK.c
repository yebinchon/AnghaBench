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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PHPDBG_IN_EVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7() {
	if (!(FUNC0(flags) & PHPDBG_IN_EVAL)) {
		const char *file_char = FUNC4();
		zend_string *file = FUNC6(file_char, FUNC3(file_char), 0);
		FUNC2(file, 3, FUNC5()-1, FUNC5());
		FUNC1(file);
	}
}