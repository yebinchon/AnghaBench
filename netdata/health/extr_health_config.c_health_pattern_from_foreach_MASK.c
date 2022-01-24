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
typedef  int /*<<< orphan*/  SIMPLE_PATTERN ;

/* Variables and functions */
 int /*<<< orphan*/  SIMPLE_PATTERN_EXACT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 

SIMPLE_PATTERN *FUNC4(char *s) {
    char *convert= FUNC3(s);
    SIMPLE_PATTERN *val = NULL;
    if(convert) {
        FUNC0(convert);
        val = FUNC2(convert, NULL, SIMPLE_PATTERN_EXACT);

        FUNC1(convert);
    }

    return val;
}