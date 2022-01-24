#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pid_persist; } ;
struct TYPE_5__ {int /*<<< orphan*/  packet_id; } ;
struct TYPE_6__ {TYPE_1__ crypto_options; } ;
struct context {TYPE_4__ c1; TYPE_3__* sig; TYPE_2__ c2; } ;
struct TYPE_7__ {scalar_t__ signal_received; } ;

/* Variables and functions */
 scalar_t__ SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct context *c)
{
    FUNC0(&c->c2.crypto_options.packet_id);
    FUNC2(&c->c1.pid_persist);
    if (!(c->sig->signal_received == SIGUSR1))
    {
        FUNC1(&c->c1.pid_persist);
    }
}