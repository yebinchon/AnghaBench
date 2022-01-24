#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int /*<<< orphan*/  ioctlCode; int /*<<< orphan*/  (* pCommand ) (int,int /*<<< orphan*/ **) ;int /*<<< orphan*/  command; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 unsigned short FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FALSE ; 
 int /*<<< orphan*/  IOCTL_MIMIDRV_RAW ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* kuhl_k_c_kernel ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

NTSTATUS FUNC6(wchar_t * input)
{
	NTSTATUS status = STATUS_SUCCESS;
	int argc;
	wchar_t ** argv = FUNC1(input, &argc);
	unsigned short indexCommand;
	BOOL commandFound = FALSE;

	if(argv && (argc > 0))
	{
		for(indexCommand = 0; !commandFound && (indexCommand < FUNC0(kuhl_k_c_kernel)); indexCommand++)
		{
			if((commandFound = FUNC2(argv[0], kuhl_k_c_kernel[indexCommand].command) == 0))
			{
				if(kuhl_k_c_kernel[indexCommand].pCommand)
					status = kuhl_k_c_kernel[indexCommand].pCommand(argc - 1, argv + 1);
				else
					FUNC3(kuhl_k_c_kernel[indexCommand].ioctlCode, NULL, 0);
			}
		}
		if(!commandFound)
			FUNC3(IOCTL_MIMIDRV_RAW, input, (DWORD) (FUNC5(input) + 1) * sizeof(wchar_t));
	}
	return status;
}