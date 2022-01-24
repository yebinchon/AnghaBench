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
struct TYPE_2__ {char* nmap_payloads_filename; } ;
struct Masscan {TYPE_1__ payloads; scalar_t__ echo; scalar_t__ echo_all; } ;

/* Variables and functions */
 int CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(struct Masscan *masscan, const char *name, const char *value)
{
    FUNC0(name);
    
    if (masscan->echo) {
        if ((masscan->payloads.nmap_payloads_filename && masscan->payloads.nmap_payloads_filename[0]) || masscan->echo_all)
            FUNC1(masscan->echo, "nmap-payloads = %s\n", masscan->payloads.nmap_payloads_filename);
        return 0;
    }
    
    if (masscan->payloads.nmap_payloads_filename)
        FUNC2(masscan->payloads.nmap_payloads_filename);
    masscan->payloads.nmap_payloads_filename = FUNC3(value);

    return CONF_OK;
}