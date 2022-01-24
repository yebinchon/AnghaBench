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
typedef  int /*<<< orphan*/  ut32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*,char*,int) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static ut32 FUNC5(const char *s) {
	// XXX this is known to be buggy, only works for strings like "x.x.x"
	// XXX anything like "x.xx.x" will break the parsing
	// XXX -git is ignored, maybe we should shift for it
	char *a = FUNC4 (s);
	a = FUNC2 (a, ".", "0", 1);
	char *dash = FUNC3 (a, '-');
	if (dash) {
		*dash = 0;
	}
	ut32 res = FUNC0 (a);
	FUNC1 (a);
	return res;
}