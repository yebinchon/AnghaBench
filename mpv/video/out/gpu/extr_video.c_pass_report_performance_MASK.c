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
struct TYPE_3__ {scalar_t__ peak; scalar_t__ avg; scalar_t__ last; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct pass_info {TYPE_1__ perf; TYPE_2__ desc; } ;
struct gl_video {struct pass_info* pass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_video*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int VO_PASS_PERF_MAX ; 

__attribute__((used)) static void FUNC2(struct gl_video *p)
{
    if (!p->pass)
        return;

    for (int i = 0; i < VO_PASS_PERF_MAX; i++) {
        struct pass_info *pass = &p->pass[i];
        if (pass->desc.len) {
            FUNC1(p, "pass '%.*s': last %dus avg %dus peak %dus\n",
                     FUNC0(pass->desc),
                     (int)pass->perf.last/1000,
                     (int)pass->perf.avg/1000,
                     (int)pass->perf.peak/1000);
        }
    }
}