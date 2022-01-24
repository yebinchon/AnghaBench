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
typedef  int st32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static st32 FUNC6(char *input) {
	st32 tempres, res = 0;
	int i, j, start, end;
	char *temp = NULL;
	char *otemp = NULL;
	char *temp2 = FUNC2 (FUNC4 (input) + 1);
	if (!temp2) {
		res = -1;
		goto end;
	}
	temp = (char *)FUNC2 (FUNC4 (input) + 1);
	if (!temp) {
		res = -1;
		goto end;
	}
	otemp = temp;
	while (*input != '\0') {
		for (; *input == ' '; input++) {
			;
		}
		for (i = 0; input[i] != ',' && input[i] != '\0'; i++) {
			;
		}
		FUNC3 (temp, input, i + 1);

		input += i;
		if (*input != '\0') {
			input++;
		}

		for (i = 0; temp[i] != '-' && temp[i] != '\0'; i++) {
			;
		}
		if (i == FUNC4 (temp)) {
			tempres = FUNC1 (temp);
			if (tempres == -1 || tempres > 15) {
				res = -1;
				goto end;
			}
			res |= 1 << tempres;
		} else {
			FUNC5 (temp2, temp, i);
			temp2[i] = 0;
			temp += i + 1;
			start = FUNC1 (temp2);
			if (start == -1 || start > 15) {
				res = -1;
				goto end;
			}
			end = FUNC1 (temp);
			if (end == -1 || end > 15) {
				res = -1;
				goto end;
			}

			for (j = start; j <= end; j++ ) {
				res |= 1 << j;
			}
		}
	}
end:
	FUNC0 (otemp);
	FUNC0 (temp2);
	return res;
}