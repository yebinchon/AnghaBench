#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ frame; } ;
struct priv {TYPE_2__ sub; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 scalar_t__ MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct mp_filter *f)
{
    struct priv *p = f->priv;

    if (!FUNC3(&p->sub))
        return;

    if (p->sub.frame.type == MP_FRAME_VIDEO) {
        FUNC1(f);
        return;
    }

    if (p->sub.frame.type == MP_FRAME_AUDIO) {
        FUNC0(f);
        return;
    }

    FUNC2(&p->sub);
}