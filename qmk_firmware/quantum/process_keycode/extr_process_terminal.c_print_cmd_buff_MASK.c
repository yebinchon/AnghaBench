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
 int CMD_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const** cmd_buffer ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void) {
    /* without the below wait, a race condition can occur wherein the
     buffer can be printed before it has been fully moved */
    FUNC3(250);
    for (int i = 0; i < CMD_BUFF_SIZE; i++) {
        char tmpChar = ' ';
        FUNC1(i, &tmpChar, 10);
        const char *tmpCnstCharStr = &tmpChar;  // because sned_string wont take a normal char *
        FUNC2(tmpCnstCharStr);
        FUNC0(". ");
        FUNC2(cmd_buffer[i]);
        FUNC0("\n");
    }
}