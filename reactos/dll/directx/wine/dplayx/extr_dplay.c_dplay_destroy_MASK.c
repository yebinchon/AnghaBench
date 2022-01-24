#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* DebugInfo; } ;
struct TYPE_8__ {TYPE_5__ lock; } ;
struct TYPE_7__ {scalar_t__* Spare; } ;
typedef  TYPE_2__ IDirectPlayImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(IDirectPlayImpl *obj)
{
     FUNC0( obj );
     obj->lock.DebugInfo->Spare[0] = 0;
     FUNC1( &obj->lock );
     FUNC3( FUNC2(), 0, obj );
}