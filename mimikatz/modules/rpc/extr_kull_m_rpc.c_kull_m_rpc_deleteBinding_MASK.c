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
typedef  int /*<<< orphan*/ * RPC_BINDING_HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **) ; 

BOOL FUNC1(RPC_BINDING_HANDLE *hBinding)
{
	BOOL status = FALSE;
	if((status = (FUNC0(hBinding) == RPC_S_OK)))
		*hBinding = NULL;
	return status;
}