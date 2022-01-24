#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ra_hwdec_driver {int dummy; } ;
struct ra_hwdec {int dummy; } ;
struct mp_hwdec_devices {int dummy; } ;
struct gl_video {int /*<<< orphan*/  num_hwdecs; int /*<<< orphan*/  hwdecs; int /*<<< orphan*/  global; int /*<<< orphan*/  log; int /*<<< orphan*/  ra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_video*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ra_hwdec*) ; 
 struct ra_hwdec* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_hwdec_devices*,struct ra_hwdec_driver const*,int) ; 

__attribute__((used)) static void FUNC2(struct gl_video *p, struct mp_hwdec_devices *devs,
                           const struct ra_hwdec_driver *drv, bool is_auto)
{
    struct ra_hwdec *hwdec =
        FUNC1(p->ra, p->log, p->global, devs, drv, is_auto);
    if (hwdec)
        FUNC0(p, p->hwdecs, p->num_hwdecs, hwdec);
}