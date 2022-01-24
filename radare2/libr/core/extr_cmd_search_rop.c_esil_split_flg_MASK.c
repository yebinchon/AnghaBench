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
 char* FUNC0 (char*,scalar_t__) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4 (char *esil_str, char **esil_main, char **esil_flg) {
	char *split = FUNC3 (esil_str, "f,=");
	const int kCommaHits = 2;
	int hits = 0;

	if (split) {
		while (hits != kCommaHits) {
			--split;
			if (*split == ',') {
				hits++;
			}
		}
		*esil_flg = FUNC1 (++split);
		*esil_main = FUNC0 (esil_str, FUNC2 (esil_str) - FUNC2 (*esil_flg) - 1);
	}
}