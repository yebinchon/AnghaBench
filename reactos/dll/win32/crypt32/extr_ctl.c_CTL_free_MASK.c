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
struct TYPE_3__ {int /*<<< orphan*/  pCtlInfo; int /*<<< orphan*/  pbCtlContext; int /*<<< orphan*/  pbCtlEncoded; int /*<<< orphan*/  hCryptMsg; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;
typedef  TYPE_2__ ctl_t ;
typedef  int /*<<< orphan*/  context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(context_t *context)
{
    ctl_t *ctl = (ctl_t*)context;

    FUNC1(ctl->ctx.hCryptMsg);
    FUNC0(ctl->ctx.pbCtlEncoded);
    FUNC0(ctl->ctx.pbCtlContext);
    FUNC2(ctl->ctx.pCtlInfo);
}