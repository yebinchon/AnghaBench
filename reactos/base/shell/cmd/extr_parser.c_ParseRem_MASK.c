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
typedef  int /*<<< orphan*/  PARSED_COMMAND ;

/* Variables and functions */
 scalar_t__ CurChar ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char) ; 

__attribute__((used)) static PARSED_COMMAND *FUNC2(void)
{
    /* Just ignore the rest of the line */
    while (CurChar && CurChar != FUNC1('\n'))
        FUNC0();
    return NULL;
}