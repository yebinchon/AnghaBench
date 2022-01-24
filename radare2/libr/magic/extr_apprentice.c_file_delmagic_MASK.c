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
struct r_magic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r_magic*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 

void FUNC3(struct r_magic *p, int type, size_t entries) {
	if (p) {
		switch (type) {
#ifdef QUICK
	case 2:
		p--;
		(void)munmap ((void *)p, sizeof (*p) * (entries + 1));
		break;
#endif
	case 1:
		p--;
		/*FALLTHROUGH*/
	case 0:
		FUNC0 (p);
		break;
	default:
		FUNC1 ();
	}
	}
}