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
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *p, char *buf, int buflen) {
	if (!buf || buflen < 1) {
		return;
	}
	*buf = 0;
	FUNC2 (p);
	FUNC1 (NULL, true);
	FUNC0 (buf, buflen, 0, NULL);
	FUNC1 (NULL, false);
}