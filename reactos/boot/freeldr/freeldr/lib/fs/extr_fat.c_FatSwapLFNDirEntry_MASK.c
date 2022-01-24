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
struct TYPE_4__ {void** Name11_12; void** Name5_10; void** Name0_4; } ;
typedef  TYPE_1__* PLFN_DIRENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  StartCluster ; 

VOID FUNC2(PLFN_DIRENTRY Obj)
{
    int i;
    FUNC0(Obj, StartCluster);
    for(i = 0; i < 5; i++)
        Obj->Name0_4[i] = FUNC1(Obj->Name0_4[i]);
    for(i = 0; i < 6; i++)
        Obj->Name5_10[i] = FUNC1(Obj->Name5_10[i]);
    for(i = 0; i < 2; i++)
        Obj->Name11_12[i] = FUNC1(Obj->Name11_12[i]);
}