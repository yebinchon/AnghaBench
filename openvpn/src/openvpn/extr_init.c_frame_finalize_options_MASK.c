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
struct TYPE_4__ {int /*<<< orphan*/  tun_mtu; int /*<<< orphan*/  tun_mtu_defined; int /*<<< orphan*/  link_mtu; int /*<<< orphan*/  link_mtu_defined; } ;
struct options {TYPE_2__ ce; } ;
struct TYPE_3__ {int /*<<< orphan*/  frame; } ;
struct context {TYPE_1__ c2; struct options options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 int FRAME_HEADROOM_MARKER_FRAGMENT ; 
 int FRAME_HEADROOM_MARKER_READ_LINK ; 
 int FRAME_HEADROOM_MARKER_READ_STREAM ; 
 int /*<<< orphan*/  PAYLOAD_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(struct context *c, const struct options *o)
{
    if (!o)
    {
        o = &c->options;
    }

    /*
     * Set adjustment factor for buffer alignment when no
     * cipher is used.
     */
    if (!FUNC0(c))
    {
        FUNC2(&c->c2.frame);
        FUNC4(&c->c2.frame,
                             FRAME_HEADROOM_MARKER_FRAGMENT
                             |FRAME_HEADROOM_MARKER_READ_LINK
                             |FRAME_HEADROOM_MARKER_READ_STREAM);
    }

    FUNC1(&c->c2.frame, PAYLOAD_ALIGN);
    FUNC3(&c->c2.frame,
                   o->ce.link_mtu_defined,
                   o->ce.link_mtu,
                   o->ce.tun_mtu_defined,
                   o->ce.tun_mtu);
}