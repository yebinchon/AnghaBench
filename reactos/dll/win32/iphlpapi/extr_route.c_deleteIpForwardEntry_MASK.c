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
typedef  int /*<<< orphan*/  PMIB_IPFORWARDROW ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

DWORD FUNC2( PMIB_IPFORWARDROW pRoute ) {
  FUNC1("pRoute %p\n", pRoute);
  /* could use SIOCDELRT, not sure I want to */
  FUNC0(":stub\n");
  return (DWORD) 0;
}