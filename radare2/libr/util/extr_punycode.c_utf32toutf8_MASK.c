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
typedef  int ut8 ;
typedef  int ut32 ;

/* Variables and functions */
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int*) ; 

ut8 *FUNC4 (ut32 *input) {
	if (!input) {
		FUNC1 ("ERROR input is null\n");
		return NULL;
	}

	int i = 0;
	int j = 0;
	int len = FUNC3 (input);
	ut8 *result = FUNC0 (4, len + 1);
	if (!result) {
		FUNC1 ("ERROR: out of memory\n");
		return NULL;
	}

	for (i = 0; i < len; i++) {
		if (input[i] < 0x80) {
			result[j] = input[i];
			j++;
		} else if (input[i] < 0x800) {
			result[j + 1] = 0x80 | (input[i] & 0x3f);
			result[j] = 0xc0 | ((input[i] >> 6) & 0x1f);
			j += 2;
		} else if (input[i] < 0x10000) {
			result[j + 2] = 0x80 | (input[i] & 0x3f);
			result[j + 1] = 0x80 | ((input[i] >> 6) & 0x3f);
			result[j] = 0xe0 | ((input[i] >> 12) & 0xf);
			j += 3;
		} else if (input[i] < 0x200000) {
			result[j + 3] = 0x80 | (input[i] & 0x3f);
			result[j + 2] = 0x80 | ((input[i] >> 6) & 0x3f);
			result[j + 1] = 0x80 | ((input[i] >> 12) & 0x3f);
			result[j] = 0xf0 | ((input[i] >> 18) & 0x7);
			j += 4;
		} else {
			FUNC1 ("ERROR in toutf8. Seems like input is invalid\n");
			FUNC2 (result);
			return NULL;
		}
	}

	result[j] = 0;
	return result;
}