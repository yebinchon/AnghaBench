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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

int FUNC4() {
    FUNC0();

    /* Fill up the screen */
    int i = 0;
    for (i = 0; i < 24; i++) {
        char str[255];
        FUNC1(i, str);
        FUNC3(str, 0, i);
    }

    FUNC3("This text forces the kernel to scroll. Row 0 will disappear. ", 60, 24);
    FUNC2("And with this text, the kernel will scroll again, and row 1 will disappear too!");
}