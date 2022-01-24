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
 int YY_EOF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yy_buf ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int yy_line ; 
 int /*<<< orphan*/  yy_pos ; 
 int /*<<< orphan*/  yy_text ; 

__attribute__((used)) static void FUNC3(void) {
	int sym;

	yy_pos = yy_text = yy_buf;
	yy_line = 1;
	sym = FUNC1(FUNC0());
	if (sym != YY_EOF) {
		FUNC2("<EOF> expected, got", sym);
	}
}