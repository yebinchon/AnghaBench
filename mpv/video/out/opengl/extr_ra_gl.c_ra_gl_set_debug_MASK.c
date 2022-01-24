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
struct ra_gl {int debug_enable; } ;
struct ra {int /*<<< orphan*/ * log; struct ra_gl* priv; } ;
struct TYPE_4__ {scalar_t__ debug_context; } ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct ra*) ; 

void FUNC2(struct ra *ra, bool enable)
{
    struct ra_gl *p = ra->priv;
    GL *gl = FUNC1(ra);

    p->debug_enable = enable;
    if (gl->debug_context)
        FUNC0(gl, enable ? ra->log : NULL);
}