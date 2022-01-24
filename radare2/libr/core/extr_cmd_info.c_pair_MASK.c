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
typedef  int /*<<< orphan*/  ws ;

/* Variables and functions */
 int PAIR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *a, const char *b) {
	char ws[16];
	int al = FUNC2 (a);
	if (!b) {
		return;
	}
	FUNC0 (ws, ' ', sizeof (ws));
	al = PAIR_WIDTH - al;
	if (al < 0) {
		al = 0;
	}
	ws[al] = 0;
	FUNC1 ("%s%s%s\n", a, ws, b);
}