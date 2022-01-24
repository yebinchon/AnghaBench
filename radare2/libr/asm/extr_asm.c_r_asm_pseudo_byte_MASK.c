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
typedef  int /*<<< orphan*/  RAsmOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,char) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static inline int FUNC8(RAsmOp *op, char *input) {
	int i, len = 0;
	FUNC4 (input, ',', ' ');
	len = FUNC5 (input);
	FUNC7 (input);
	ut8 *buf = FUNC1 (len);
	if (!buf) {
		return 0;
	}
	for (i = 0; i < len; i++) {
		const char *word = FUNC6 (input, i);
		int num = (int)FUNC3 (NULL, word);
		buf[i] = num;
	}
	FUNC2 (op, buf, len);
	FUNC0 (buf);
	return len;
}