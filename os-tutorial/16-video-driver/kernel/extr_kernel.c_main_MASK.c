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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

int FUNC3() {
    FUNC0();
    FUNC2("X", 1, 6);
    FUNC2("This text spans multiple lines", 75, 10);
    FUNC2("There is a line\nbreak", 0, 20);
    FUNC1("There is a line\nbreak");
    FUNC2("What happens when we run out of space?", 45, 24);
}