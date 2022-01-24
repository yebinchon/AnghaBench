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
 int FUNC3 (char const*) ; 

ut32 *FUNC4 (const ut8 *input) {
	if (!input) {
		FUNC1 ("ERROR input is null\n");
		return NULL;
	}

	int i = 0;
	int j = 0;
	int val = 0;
	int len = FUNC3 ((const char *) input);
	ut32 *result = FUNC0 (FUNC3 ((const char *) input) + 1, 4);

	if (!result) {
		FUNC1 ("ERROR: out of memory\n");
		return NULL;
	}

	while (i < len) {
		if (input[i] >> 7 == 0) {
			val = input[i];
			i += 1;
		} else if (input[i] >> 5 == 0x6) {
			val = (((input[i] & 0x1f) << 6) & 0xfc0) |
			(input[i + 1] & 0x3f);
			i += 2;
		} else if (input[i] >> 4 == 0xe) {
			val = (((input[i] & 0xf) << 12) & 0xf000) |
			(((input[i + 1] & 0x3f) << 6) & 0xffc0) |
			(input[i + 2] & 0x3f);
			i += 3;
		} else if (input[i] >> 3 == 0x1e) {
			val = (((input[i] & 0xf) << 18) & 0x1c0000) |
			(((input[i + 1] & 0x3f) << 12) & 0x1ff000) |
			(((input[i + 2] & 0x3f) << 6) & 0x1fffc0) |
			(input[i + 3] & 0x3f);
			i += 4;
		} else {
			FUNC1 ("ERROR in toutf32. Seems like input is invalid.\n");
			FUNC2 (result);
			return NULL;
		}
		result[j] = val;
		j++;
	}

	return result;
}