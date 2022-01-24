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

/* Variables and functions */
 int M_NOPREFIX ; 
 int M_WARN ; 
 int /*<<< orphan*/  OPENVPN_EXIT_STATUS_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
    FUNC0(M_WARN|M_NOPREFIX, "Use --help for more information.");
    FUNC1(OPENVPN_EXIT_STATUS_USAGE); /* exit point */
}