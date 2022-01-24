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
typedef  int uint64_t ;
struct Masscan {int retries; scalar_t__ echo; scalar_t__ echo_all; } ;

/* Variables and functions */
 int CONF_ERR ; 
 int CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct Masscan *masscan, const char *name, const char *value)
{
    uint64_t x;
    
    FUNC0(name);
    if (masscan->echo) {
        if (masscan->retries || masscan->echo_all)
            FUNC1(masscan->echo, "retries = %u\n", masscan->retries);
        return 0;
    }
    x = FUNC2(value, 0, 0);
    if (x >= 1000) {
        FUNC1(stderr, "FAIL: retries=<n>: expected number less than 1000\n");
        return CONF_ERR;
    }
    masscan->retries = (unsigned)x;
    return CONF_OK;
    
}