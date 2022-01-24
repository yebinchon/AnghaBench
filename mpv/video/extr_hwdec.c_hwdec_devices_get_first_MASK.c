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
struct mp_hwdec_devices {int dummy; } ;
struct mp_hwdec_ctx {int dummy; } ;

/* Variables and functions */
 struct mp_hwdec_ctx* FUNC0 (struct mp_hwdec_devices*,int /*<<< orphan*/ ) ; 

struct mp_hwdec_ctx *FUNC1(struct mp_hwdec_devices *devs)
{
    return FUNC0(devs, 0);
}