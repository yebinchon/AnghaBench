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
struct vo_frame {int dummy; } ;
struct ra_swapchain {struct priv* priv; } ;
struct priv {int /*<<< orphan*/  swapchain; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct ra_swapchain *sw, const struct vo_frame *frame)
{
    struct priv *p = sw->priv;
    return FUNC0(p->swapchain);
}