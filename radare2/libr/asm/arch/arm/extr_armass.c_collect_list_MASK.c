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
typedef  int /*<<< orphan*/  conc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

void FUNC4(char *input[]) {
	if (input[0] == NULL) {
		return;
	}
	char *temp  = FUNC1 (500);
	if (!temp) {
		return;
	}
	temp[0] = 0;
	int i;
	int conc = 0;
	int start, end = 0;
	int arrsz;
	for (arrsz = 1; input[arrsz] != NULL; arrsz++) {
		;
	}

	for (i = 0; input[i]; i++) {
		if (conc) {
			FUNC2 (temp, ", ");
			FUNC2 (temp, input[i]);
		}
		if (input[i][0] == '{') {
			conc = 1;
			FUNC2 (temp, input[i]);
			start = i;
		}
		if ((conc) & (input[i][FUNC3 (input[i]) - 1] == '}')) {
			conc = 0;
			end = i;
		}
	}
	if (end == 0) {
		FUNC0 (temp);
		return;
	}
	input[start] = temp;
	for (i = start + 1; i < arrsz; i++) {
		input[i] = input[(end-start) + i];
	}
	input[i] = NULL;
}