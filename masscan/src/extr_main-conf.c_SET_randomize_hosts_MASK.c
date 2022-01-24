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
struct Masscan {scalar_t__ echo; } ;

/* Variables and functions */
 int CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(struct Masscan *masscan, const char *name, const char *value)
{
    FUNC0(name);
    FUNC0(value);
    if (masscan->echo) {
        //fprintf(masscan->echo, "randomize-hosts = true\n");
        return 0;
    }
    return CONF_OK;
}