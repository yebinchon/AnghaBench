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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char*,char const*) ; 

__attribute__((used)) static void FUNC3(char *s, const char *k, const char *v) {
	for (;;) {
		char *p = FUNC2 (s, k);
		if (!p) {
			break;
		}
		char *s = p + FUNC1 (k);
		char *d = p + FUNC1 (v);
		FUNC0 (d, s, FUNC1 (s) + 1);
		FUNC0 (p, v, FUNC1 (v));
		s = p + FUNC1 (v);
	}
}