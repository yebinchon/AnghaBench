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
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/ * clientKey ; 
 int /*<<< orphan*/ * hBinding ; 
 int /*<<< orphan*/ * hMimi ; 
 int /*<<< orphan*/  isFinish ; 
 int /*<<< orphan*/  outputCritical ; 

NTSTATUS FUNC1()
{
	hMimi = NULL;
	hBinding = NULL;
	clientKey = NULL;
	isFinish = FALSE;
	FUNC0(&outputCritical);
	return STATUS_SUCCESS;
}