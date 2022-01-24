#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ is_show_closed; scalar_t__ is_show_host; scalar_t__ is_show_open; } ;
struct Masscan {TYPE_1__ output; scalar_t__ echo; scalar_t__ echo_all; } ;

/* Variables and functions */
 int CONF_OK ; 
 scalar_t__ FUNC0 (char*,char const*,unsigned int) ; 
 unsigned int FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,char*,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct Masscan *masscan, const char *name, const char *value)
{
    FUNC3(name);
    if (masscan->echo) {
        if (masscan->echo_all) {
            FUNC5(masscan->echo, "output-noshow = %s%s%s\n",
                    (!masscan->output.is_show_open)?"open,":"",
                    (!masscan->output.is_show_closed)?"closed,":"",
                    (!masscan->output.is_show_host)?"host,":""
                    );
        }
        return 0;
    }
    for (;;) {
        const char *val2 = value;
        unsigned val2_len = FUNC1(val2, ',');
        if (val2_len == 0)
            break;
        if (FUNC0("open", val2, val2_len))
            masscan->output.is_show_open = 0;
        else if (FUNC0("closed", val2, val2_len) || FUNC0("close", val2, val2_len))
            masscan->output.is_show_closed = 0;
        else if (FUNC0("open", val2, val2_len))
            masscan->output.is_show_host = 0;
        else if (FUNC0("all",val2,val2_len)) {
            masscan->output.is_show_open = 0;
            masscan->output.is_show_host = 0;
            masscan->output.is_show_closed = 0;
        }
        else {
            FUNC2(0, "FAIL: unknown 'noshow' spec: %.*s\n", val2_len, val2);
            FUNC4(1);
        }
        value += val2_len;
        while (*value == ',')
            value++;
    }
    return CONF_OK;
}