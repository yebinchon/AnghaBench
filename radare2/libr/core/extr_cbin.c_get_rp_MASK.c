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

__attribute__((used)) static char *FUNC1(const char *rtype) {
	char *rp = NULL;
	switch (rtype[0]) {
	case 'v':
		rp = FUNC0 ("void");
		break;
	case 'c':
		rp = FUNC0 ("char");
		break;
	case 'i':
		rp = FUNC0 ("int");
		break;
	case 's':
		rp = FUNC0 ("short");
		break;
	case 'l':
		rp = FUNC0 ("long");
		break;
	case 'q':
		rp = FUNC0 ("long long");
		break;
	case 'C':
		rp = FUNC0 ("unsigned char");
		break;
	case 'I':
		rp = FUNC0 ("unsigned int");
		break;
	case 'S':
		rp = FUNC0 ("unsigned short");
		break;
	case 'L':
		rp = FUNC0 ("unsigned long");
		break;
	case 'Q':
		rp = FUNC0 ("unsigned long long");
		break;
	case 'f':
		rp = FUNC0 ("float");
		break;
	case 'd':
		rp = FUNC0 ("double");
		break;
	case 'D':
		rp = FUNC0 ("long double");
		break;
	case 'B':
		rp = FUNC0 ("bool");
		break;
	case '#':
		rp = FUNC0 ("CLASS");
		break;
	default:
		rp = FUNC0 ("unknown");
		break;
	}
	return rp;
}