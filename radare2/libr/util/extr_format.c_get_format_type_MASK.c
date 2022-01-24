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
 char* FUNC0 (char*) ; 

__attribute__((used)) static char *FUNC1(const char fmt) {
	char *type = NULL;
	switch (fmt) {
	case 'b':
	case 'C':
		type = FUNC0 ("uint8_t");
		break;
	case 'c':
		type = FUNC0 ("int8_t");
		break;
	case 'd':
	case 'i':
	case 'o':
	case 'x':
		type = FUNC0 ("int32_t");
		break;
	case 'E':
		type = FUNC0 ("enum");
		break;
	case 'f':
		type = FUNC0 ("float");
		break;
	case 'F':
		type = FUNC0 ("double");
		break;
	case 'q':
		type = FUNC0 ("uint64_t");
		break;
	case 'u':
		type = FUNC0 ("uleb128_t");
		break;
	case 'w':
		type = FUNC0 ("uint16_t");
		break;
	case 'X':
		type = FUNC0 ("uint8_t[]");
		break;
	case 'D':
	case 's':
	case 'S':
	case 't':
	case 'z':
	case 'Z':
		type = FUNC0 ("char*");
	}
	return type;
}