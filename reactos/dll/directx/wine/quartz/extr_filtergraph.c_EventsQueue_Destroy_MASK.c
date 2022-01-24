#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* DebugInfo; } ;
struct TYPE_6__ {TYPE_4__ msg_crst; int /*<<< orphan*/  messages; int /*<<< orphan*/  msg_event; } ;
struct TYPE_5__ {scalar_t__* Spare; } ;
typedef  TYPE_2__ EventsQueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int TRUE ; 

__attribute__((used)) static int FUNC3(EventsQueue* omr)
{
    FUNC0(omr->msg_event);
    FUNC1(omr->messages);
    omr->msg_crst.DebugInfo->Spare[0] = 0;
    FUNC2(&omr->msg_crst);
    return TRUE;
}