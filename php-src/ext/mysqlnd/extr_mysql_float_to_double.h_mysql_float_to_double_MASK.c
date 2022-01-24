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
 int /*<<< orphan*/  FLT_DIG ; 
 int MAX_CHAR_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (float,int /*<<< orphan*/ ,char,char,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,float) ; 
 double FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline double FUNC3(float fp4, int decimals) {
	char num_buf[MAX_CHAR_BUF_LEN]; /* Over allocated */

	if (decimals < 0) {
		FUNC0(fp4, FLT_DIG, '.', 'e', num_buf);
	} else {
		FUNC1(num_buf, "%.*f", decimals, fp4);
	}

	return FUNC2(num_buf, NULL);
}