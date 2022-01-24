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
typedef  int /*<<< orphan*/  ut8 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(char *s, int sz, const ut8 *buf, int len) {
	*s = 0;
	int last = FUNC0 (len, sz);
	if (last < 1) {
		return;
	}
	s[sz - 1] = 0;
	while (*s && *s == '\n') {
		s++;
	}
	FUNC1 (s, (char *) buf, last);
}