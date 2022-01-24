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
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* hexconvtab ; 
 int /*<<< orphan*/ * FUNC1 (size_t const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string *FUNC2(const unsigned char *old, const size_t oldlen)
{
	zend_string *result;
	size_t i, j;

	result = FUNC1(oldlen, 2 * sizeof(char), 0, 0);

	for (i = j = 0; i < oldlen; i++) {
		FUNC0(result)[j++] = hexconvtab[old[i] >> 4];
		FUNC0(result)[j++] = hexconvtab[old[i] & 15];
	}
	FUNC0(result)[j] = '\0';

	return result;
}