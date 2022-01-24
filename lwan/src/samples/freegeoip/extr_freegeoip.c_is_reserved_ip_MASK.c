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
typedef  int /*<<< orphan*/  in_addr_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * reserved_ips ; 

__attribute__((used)) static bool FUNC2(in_addr_t ip)
{
    size_t i;
    for (i = 0; i < FUNC0(reserved_ips); i++) {
        if (FUNC1(&reserved_ips[i], ip))
            return true;
    }
    return false;
}