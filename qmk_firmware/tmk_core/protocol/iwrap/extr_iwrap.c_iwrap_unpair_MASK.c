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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* rcv_buf ; 
 int rcv_tail ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

void FUNC5(void) {
    FUNC1("SET BT PAIR");
    FUNC0(500);

    char *p = rcv_buf + rcv_tail;
    if (!FUNC3(p, "SET BT PAIR", 11)) {
        FUNC4(p + 29, "\n\0", 2);
        FUNC2(p);
        FUNC1(p);
    }
}