#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  q; } ;
struct TYPE_9__ {int /*<<< orphan*/  q; } ;
struct TYPE_8__ {int /*<<< orphan*/  q; } ;
struct TYPE_12__ {TYPE_3__ buffered_app_data; TYPE_2__ processed_rcds; TYPE_1__ unprocessed_rcds; } ;
struct TYPE_11__ {TYPE_5__* d; } ;
typedef  TYPE_4__ RECORD_LAYER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(RECORD_LAYER *rl)
{
    FUNC0(rl);
    FUNC2(rl->d->unprocessed_rcds.q);
    FUNC2(rl->d->processed_rcds.q);
    FUNC2(rl->d->buffered_app_data.q);
    FUNC1(rl->d);
    rl->d = NULL;
}