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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(zval *return_value, int token_type,
		unsigned char *text, size_t leng, int lineno) {
	if (token_type >= 256) {
		zval keyword;
		FUNC5(&keyword);
		FUNC1(&keyword, token_type);
		if (leng == 1) {
			FUNC2(&keyword, FUNC0(text[0]));
		} else {
			FUNC3(&keyword, (char *) text, leng);
		}
		FUNC1(&keyword, lineno);
		FUNC4(return_value, &keyword);
	} else {
		if (leng == 1) {
			FUNC2(return_value, FUNC0(text[0]));
		} else {
			FUNC3(return_value, (char *) text, leng);
		}
	}
}