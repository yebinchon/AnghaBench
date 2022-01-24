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
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/ * PRTL_DEBUG_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  RTL_DEBUG_QUERY_HEAPS ; 
 int /*<<< orphan*/  RTL_DEBUG_QUERY_MODULES ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  SystemProcessInformation ; 
 int TH32CS_SNAPHEAPLIST ; 
 int TH32CS_SNAPMODULE ; 
 int TH32CS_SNAPPROCESS ; 
 int TH32CS_SNAPTHREAD ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static NTSTATUS
FUNC8(DWORD dwFlags,
                   DWORD th32ProcessID,
                   PRTL_DEBUG_INFORMATION *HeapDebug,
                   PRTL_DEBUG_INFORMATION *ModuleDebug,
                   PVOID *ProcThrdInfo,
                   SIZE_T *ProcThrdInfoSize)
{
  NTSTATUS Status = STATUS_SUCCESS;

  *HeapDebug = NULL;
  *ModuleDebug = NULL;
  *ProcThrdInfo = NULL;
  *ProcThrdInfoSize = 0;

  /*
   * Allocate the debug information for a heap snapshot
   */
  if(dwFlags & TH32CS_SNAPHEAPLIST)
  {
    *HeapDebug = FUNC5(0, FALSE);
    if(*HeapDebug != NULL)
    {
      Status = FUNC6(th32ProcessID,
                                               RTL_DEBUG_QUERY_HEAPS,
                                               *HeapDebug);
    }
    else
      Status = STATUS_UNSUCCESSFUL;
  }

  /*
   * Allocate the debug information for a module snapshot
   */
  if(dwFlags & TH32CS_SNAPMODULE &&
     FUNC0(Status))
  {
    *ModuleDebug = FUNC5(0, FALSE);
    if(*ModuleDebug != NULL)
    {
      Status = FUNC6(th32ProcessID,
                                               RTL_DEBUG_QUERY_MODULES,
                                               *ModuleDebug);
    }
    else
      Status = STATUS_UNSUCCESSFUL;
  }

  /*
   * Allocate enough memory for the system's process list
   */

  if(dwFlags & (TH32CS_SNAPPROCESS | TH32CS_SNAPTHREAD) &&
     FUNC0(Status))
  {
    for(;;)
    {
      (*ProcThrdInfoSize) += 0x10000;
      Status = FUNC1(FUNC2(),
                                       ProcThrdInfo,
                                       0,
                                       ProcThrdInfoSize,
                                       MEM_COMMIT,
                                       PAGE_READWRITE);
      if(!FUNC0(Status))
      {
        break;
      }

      Status = FUNC4(SystemProcessInformation,
                                        *ProcThrdInfo,
                                        *ProcThrdInfoSize,
                                        NULL);
      if(Status == STATUS_INFO_LENGTH_MISMATCH)
      {
        FUNC3(FUNC2(),
                            ProcThrdInfo,
                            ProcThrdInfoSize,
                            MEM_RELEASE);
        *ProcThrdInfo = NULL;
      }
      else
      {
        break;
      }
    }
  }

  /*
   * Free resources in case of failure!
   */

  if(!FUNC0(Status))
  {
    FUNC7(*HeapDebug,
                               *ModuleDebug,
                               *ProcThrdInfo,
                               *ProcThrdInfoSize);
  }

  return Status;
}