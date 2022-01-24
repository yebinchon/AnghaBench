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
 char TOK_A_DIV ; 
 char TOK_A_MOD ; 
 char TOK_A_OR ; 
 char TOK_A_SAR ; 
 char TOK_A_SHL ; 
 char TOK_A_XOR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char tok ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void) {
	int t;

	FUNC0 ();
	if (tok == '=' ||
	    (tok >= TOK_A_MOD && tok <= TOK_A_DIV) ||
	    tok == TOK_A_XOR || tok == TOK_A_OR ||
	    tok == TOK_A_SHL || tok == TOK_A_SAR) {
		FUNC2 ();
		t = tok;
		FUNC1 ();
		if (t == '=') {
			FUNC4 ();
		} else {
			FUNC3 ();
			FUNC4 ();
		}
	}
}