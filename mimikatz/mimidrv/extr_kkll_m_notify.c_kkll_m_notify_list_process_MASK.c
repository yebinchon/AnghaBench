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
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  int /*<<< orphan*/  PKIWI_BUFFER ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcessReferences ; 
 int /*<<< orphan*/  PspCreateProcessNotifyRoutine ; 
 int /*<<< orphan*/  PspCreateProcessNotifyRoutineMax ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC2(PKIWI_BUFFER outBuffer)
{
	return FUNC1(outBuffer, ProcessReferences, FUNC0(ProcessReferences), (PUCHAR *) &PspCreateProcessNotifyRoutine, &PspCreateProcessNotifyRoutineMax);
}