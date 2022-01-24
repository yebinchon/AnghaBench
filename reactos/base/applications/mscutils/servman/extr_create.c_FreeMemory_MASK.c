#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {struct TYPE_4__* Options; struct TYPE_4__* Description; struct TYPE_4__* BinPath; struct TYPE_4__* DisplayName; struct TYPE_4__* ServiceName; } ;
typedef  TYPE_1__* PCREATE_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ProcessHeap ; 

__attribute__((used)) static VOID
FUNC1(PCREATE_DATA Data)
{
    if (Data->ServiceName != NULL)
        FUNC0(ProcessHeap,
                 0,
                 Data->ServiceName);
    if (Data->DisplayName != NULL)
        FUNC0(ProcessHeap,
                 0,
                 Data->DisplayName);
    if (Data->BinPath != NULL)
        FUNC0(ProcessHeap,
                 0,
                 Data->BinPath);
    if (Data->Description != NULL)
        FUNC0(ProcessHeap,
                 0,
                 Data->Description);
    if (Data->Options != NULL)
        FUNC0(ProcessHeap,
                 0,
                 Data->Options);

    FUNC0(ProcessHeap,
             0,
             Data);
}