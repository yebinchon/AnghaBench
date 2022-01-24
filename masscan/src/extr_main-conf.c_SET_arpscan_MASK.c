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
struct Range {void* end; void* begin; } ;
struct TYPE_2__ {int arp; } ;
struct Masscan {TYPE_1__ scan_type; int /*<<< orphan*/  ports; scalar_t__ echo; scalar_t__ echo_all; } ;

/* Variables and functions */
 int CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 void* Templ_ARP ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct Masscan*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct Masscan *masscan, const char *name, const char *value)
{
    struct Range range;

    FUNC1(name);
    FUNC1(value);

    if (masscan->echo) {
        if (masscan->scan_type.arp || masscan->echo_all)
            FUNC2(masscan->echo, "arpscan = %s\n", masscan->scan_type.arp?"true":"false");
        return 0;
    }
    range.begin = Templ_ARP;
    range.end = Templ_ARP;
    FUNC4(&masscan->ports, range.begin, range.end);
    FUNC5(&masscan->ports);
    FUNC3(masscan, "router-mac", "ff-ff-ff-ff-ff-ff");
    masscan->scan_type.arp = 1;
    FUNC0(5, "--arpscan\n");
    return CONF_OK;
}