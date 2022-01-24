#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_4__ {scalar_t__ UniqueProcessId; int NextEntryOffset; int ThreadCount; } ;
struct TYPE_3__ {scalar_t__ UniqueThreadId; scalar_t__ ThreadState; scalar_t__ WaitReason; } ;
typedef  TYPE_1__ OBS_SYSTEM_THREAD_INFORMATION ;
typedef  TYPE_2__ OBS_SYSTEM_PROCESS_INFORMATION2 ;
typedef  scalar_t__ NTSTATUS ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD_PTR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SystemProcessInformation ; 
 scalar_t__ THREAD_STATE_WAITING ; 
 scalar_t__ THREAD_WAIT_REASON_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,int,int*) ; 

__attribute__((used)) static bool FUNC4(DWORD process_id, DWORD thread_id)
{
	ULONG size = 4096;
	bool suspended = false;
	void *data = FUNC2(size);

	for (;;) {
		NTSTATUS stat = FUNC3(SystemProcessInformation,
						     data, size, &size);
		if (FUNC0(stat))
			break;

		if (stat != STATUS_INFO_LENGTH_MISMATCH) {
			goto fail;
		}

		FUNC1(data);
		size += 1024;
		data = FUNC2(size);
	}

	OBS_SYSTEM_PROCESS_INFORMATION2 *spi = data;

	for (;;) {
		if (spi->UniqueProcessId == (HANDLE)(DWORD_PTR)process_id) {
			break;
		}

		ULONG offset = spi->NextEntryOffset;
		if (!offset)
			goto fail;

		spi = (OBS_SYSTEM_PROCESS_INFORMATION2 *)((BYTE *)spi + offset);
	}

	OBS_SYSTEM_THREAD_INFORMATION *sti;
	OBS_SYSTEM_THREAD_INFORMATION *info = NULL;
	sti = (OBS_SYSTEM_THREAD_INFORMATION *)((BYTE *)spi + sizeof(*spi));

	for (ULONG i = 0; i < spi->ThreadCount; i++) {
		if (sti[i].UniqueThreadId == (HANDLE)(DWORD_PTR)thread_id) {
			info = &sti[i];
			break;
		}
	}

	if (info) {
		suspended = info->ThreadState == THREAD_STATE_WAITING &&
			    info->WaitReason == THREAD_WAIT_REASON_SUSPENDED;
	}

fail:
	FUNC1(data);
	return suspended;
}