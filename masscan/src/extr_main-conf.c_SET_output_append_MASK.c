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
struct TYPE_2__ {int is_append; } ;
struct Masscan {TYPE_1__ output; scalar_t__ echo; scalar_t__ echo_all; } ;

/* Variables and functions */
 int CONF_OK ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct Masscan *masscan, const char *name, const char *value)
{
    if (masscan->echo) {
        if (masscan->output.is_append || masscan->echo_all)
            FUNC1(masscan->echo, "output-append = %s\n",
                    masscan->output.is_append?"true":"false");
        return 0;
    }
    if (FUNC0("overwrite", name) || !FUNC2(value))
        masscan->output.is_append = 0;
    else
        masscan->output.is_append = 1;
    return CONF_OK;
}