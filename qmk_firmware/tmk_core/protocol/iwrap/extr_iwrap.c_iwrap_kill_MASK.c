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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* rcv_buf ; 
 char FUNC5 () ; 
 int rcv_tail ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

void FUNC8(void) {
    char c;
    FUNC2("LIST");
    FUNC0(500);

    while ((c = FUNC5()) && c != '\n')
        ;
    if (FUNC6(rcv_buf + rcv_tail, "LIST ", 5)) {
        FUNC3("no connection to kill.\n");
        return;
    }
    // skip 10 'space' chars
    for (uint8_t i = 10; i; i--)
        while ((c = FUNC5()) && c != ' ')
            ;

    char *p = rcv_buf + rcv_tail - 5;
    FUNC7(p, "KILL ", 5);
    FUNC7(p + 22, "\n\0", 2);
    FUNC4(p);
    FUNC2(p);
    FUNC0(500);

    FUNC1();
}