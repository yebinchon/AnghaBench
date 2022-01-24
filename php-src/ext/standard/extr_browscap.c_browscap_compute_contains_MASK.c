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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT8_MAX ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(
		zend_string *pattern, size_t start_pos,
		uint16_t *contains_start, uint8_t *contains_len) {
	size_t i = start_pos;
	/* Find first non-placeholder character after prefix */
	for (; i < FUNC1(pattern); i++) {
		if (!FUNC3(FUNC2(pattern)[i])) {
			/* Skip the case of a single non-placeholder character.
			 * Let's try to find something longer instead. */
			if (i + 1 < FUNC1(pattern) &&
					!FUNC3(FUNC2(pattern)[i + 1])) {
				break;
			}
		}
	}
	*contains_start = (uint16_t)i;

	/* Find first placeholder character after that */
	for (; i < FUNC1(pattern); i++) {
		if (FUNC3(FUNC2(pattern)[i])) {
			break;
		}
	}
	*contains_len = (uint8_t)FUNC0(i - *contains_start, UINT8_MAX);
	return i;
}