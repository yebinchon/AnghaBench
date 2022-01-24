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
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9 (RCore *c, ut64 off) {
        FUNC6 (c);
        char *ptr = FUNC1 (c, off);
	char *str = ptr;
        FUNC3 (NULL, NULL);
        if (str) {
                for (;;) {
                        if (FUNC4 ()) {
                                break;
                        }
                        char *eol = FUNC7 (ptr, '\n');
                        if (eol) {
                                *eol = '\0';
                        }
                        if (*ptr) {
                                char *p = FUNC8 (ptr);
                                if (!p) {
                                        FUNC0 (str);
                                        return;
                                }
                                FUNC5 (c, p);
                                FUNC0 (p);
                        }
                        if (!eol) {
                                break;
                        }
                        ptr = eol + 1;
                }
		FUNC0 (str);
        }
        FUNC2 ();
}