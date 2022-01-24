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
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_string *FUNC4(const unsigned char *old, const size_t oldlen)
{
	size_t target_length = oldlen >> 1;
	zend_string *str = FUNC2(target_length, 0);
	unsigned char *ret = (unsigned char *)FUNC1(str);
	size_t i, j;

	for (i = j = 0; i < target_length; i++) {
		unsigned char c = old[j++];
		unsigned char l = c & ~0x20;
		int is_letter = ((unsigned int) ((l - 'A') ^ (l - 'F' - 1))) >> (8 * sizeof(unsigned int) - 1);
		unsigned char d;

		/* basically (c >= '0' && c <= '9') || (l >= 'A' && l <= 'F') */
		if (FUNC0((((c ^ '0') - 10) >> (8 * sizeof(unsigned int) - 1)) | is_letter)) {
			d = (l - 0x10 - 0x27 * is_letter) << 4;
		} else {
			FUNC3(str);
			return NULL;
		}
		c = old[j++];
		l = c & ~0x20;
		is_letter = ((unsigned int) ((l - 'A') ^ (l - 'F' - 1))) >> (8 * sizeof(unsigned int) - 1);
		if (FUNC0((((c ^ '0') - 10) >> (8 * sizeof(unsigned int) - 1)) | is_letter)) {
			d |= l - 0x10 - 0x27 * is_letter;
		} else {
			FUNC3(str);
			return NULL;
		}
		ret[i] = d;
	}
	ret[i] = '\0';

	return str;
}