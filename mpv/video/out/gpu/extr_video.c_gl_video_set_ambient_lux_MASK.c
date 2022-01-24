#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  gamma; scalar_t__ gamma_auto; } ;
struct gl_video {TYPE_1__ opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_video*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double,double,double,double,int) ; 

void FUNC2(struct gl_video *p, int lux)
{
    if (p->opts.gamma_auto) {
        p->opts.gamma = FUNC1(16.0, 256.0, 1.0, 1.2, lux);
        FUNC0(p, "ambient light changed: %d lux (gamma: %f)\n", lux,
                 p->opts.gamma);
    }
}