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
struct TYPE_6__ {TYPE_4__* tls_auth_standalone; int /*<<< orphan*/  frame; TYPE_3__* tls_multi; } ;
struct context {TYPE_2__ c2; } ;
struct TYPE_8__ {int /*<<< orphan*/  frame; } ;
struct TYPE_5__ {int /*<<< orphan*/  frame; } ;
struct TYPE_7__ {TYPE_1__ opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  D_MTU_INFO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct context *c)
{
    if (c->c2.tls_multi)
    {
        FUNC4(c->c2.tls_multi, &c->c2.frame);
        FUNC0(FUNC1(&c->c2.tls_multi->opt.frame) <=
               FUNC1(&c->c2.frame));
        FUNC2(&c->c2.tls_multi->opt.frame, D_MTU_INFO,
                    "Control Channel MTU parms");
    }
    if (c->c2.tls_auth_standalone)
    {
        FUNC3(c->c2.tls_auth_standalone, &c->c2.frame);
        FUNC2(&c->c2.tls_auth_standalone->frame, D_MTU_INFO,
                    "TLS-Auth MTU parms");
    }
}