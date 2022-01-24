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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/ * PRTL_DEBUG_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC3(PRTL_DEBUG_INFORMATION HeapDebug,
                           PRTL_DEBUG_INFORMATION ModuleDebug,
                           PVOID ProcThrdInfo,
                           SIZE_T ProcThrdInfoSize)
{
  if(HeapDebug != NULL)
  {
    FUNC2(HeapDebug);
  }
  if(ModuleDebug != NULL)
  {
    FUNC2(ModuleDebug);
  }

  if(ProcThrdInfo != NULL)
  {
    FUNC1(FUNC0(),
                        &ProcThrdInfo,
                        &ProcThrdInfoSize,
                        MEM_RELEASE);
  }
}