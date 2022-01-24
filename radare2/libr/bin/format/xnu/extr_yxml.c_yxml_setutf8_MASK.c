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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(char *dest, unsigned ch) {
	if(ch <= 0x007F)
		FUNC0(dest++, ch);
	else if(ch <= 0x07FF) {
		FUNC0(dest++, 0xC0 | (ch>>6));
		FUNC0(dest++, 0x80 | (ch & 0x3F));
	} else if(ch <= 0xFFFF) {
		FUNC0(dest++, 0xE0 | (ch>>12));
		FUNC0(dest++, 0x80 | ((ch>>6) & 0x3F));
		FUNC0(dest++, 0x80 | (ch & 0x3F));
	} else {
		FUNC0(dest++, 0xF0 | (ch>>18));
		FUNC0(dest++, 0x80 | ((ch>>12) & 0x3F));
		FUNC0(dest++, 0x80 | ((ch>>6) & 0x3F));
		FUNC0(dest++, 0x80 | (ch & 0x3F));
	}
	*dest = 0;
}