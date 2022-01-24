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
 scalar_t__ FUNC0 (int) ; 
 int const PAIR_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(const char *key, const char *val, int mode, bool last) {
	if (!val || !*val) {
		return;
	}
	if (FUNC0 (mode)) {
		const char *lst = last ? "" : ",";
		FUNC2 ("\"%s\":%s%s", key, val, lst);
	} else {
		char ws[16];
		const int keyl = FUNC3 (key);
		const int wl = (keyl > PAIR_WIDTH) ? 0 : PAIR_WIDTH - keyl;
		FUNC1 (ws, ' ', wl);
		ws[wl] = 0;
		FUNC2 ("%s%s%s\n", key, ws, val);
	}
}