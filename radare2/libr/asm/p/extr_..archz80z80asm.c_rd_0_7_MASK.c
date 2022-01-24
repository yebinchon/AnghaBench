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
 char const* bitsetres ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const**,char) ; 

__attribute__((used)) static int FUNC2(const char **p) {
	*p = FUNC0 (*p);
	if (**p == 0) {
		return 0;
	}
	bitsetres = *p;
	FUNC1 (p, ',');
	return 1;
}