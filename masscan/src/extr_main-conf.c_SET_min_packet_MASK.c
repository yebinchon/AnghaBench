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
struct Masscan {int min_packet_size; scalar_t__ echo; scalar_t__ echo_all; } ;

/* Variables and functions */
 int CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct Masscan *masscan, const char *name, const char *value)
{
    FUNC0(name);
    if (masscan->echo) {
        if (masscan->min_packet_size != 60 || masscan->echo_all)
            FUNC1(masscan->echo, "min-packet = %u\n", masscan->min_packet_size);
        return 0;
    }
    masscan->min_packet_size = (unsigned)FUNC2(value);
    return CONF_OK;
}