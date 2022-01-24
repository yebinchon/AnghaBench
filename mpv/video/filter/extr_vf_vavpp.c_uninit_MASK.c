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
struct priv {int num_buffers; scalar_t__ context; scalar_t__ config; int /*<<< orphan*/  av_device_ref; int /*<<< orphan*/  queue; int /*<<< orphan*/  hw_pool; int /*<<< orphan*/  display; int /*<<< orphan*/ * buffers; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 scalar_t__ VA_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mp_filter *vf)
{
    struct priv *p = vf->priv;
    for (int i = 0; i < p->num_buffers; i++)
        FUNC3(p->display, p->buffers[i]);
    if (p->context != VA_INVALID_ID)
        FUNC5(p->display, p->context);
    if (p->config != VA_INVALID_ID)
        FUNC4(p->display, p->config);
    FUNC0(&p->hw_pool);
    FUNC1(vf);
    FUNC2(p->queue);
    FUNC0(&p->av_device_ref);
}