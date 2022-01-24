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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  RRDCALC_FLAG_NO_CLEAR_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static inline uint32_t FUNC3(const char *s) {
    uint32_t options = 0;
    char buf[100+1] = "";

    while(*s) {
        buf[0] = '\0';

        // skip spaces
        while(*s && FUNC1(*s))
            s++;

        // find the next space
        size_t count = 0;
        while(*s && count < 100 && !FUNC1(*s))
            buf[count++] = *s++;

        if(buf[0]) {
            buf[count] = '\0';

            if(!FUNC2(buf, "no-clear-notification") || !FUNC2(buf, "no-clear"))
                options |= RRDCALC_FLAG_NO_CLEAR_NOTIFICATION;
            else
                FUNC0("Ignoring unknown alarm option '%s'", buf);
        }
    }

    return options;
}