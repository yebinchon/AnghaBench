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
struct vo {struct vdpctx* priv; } ;
struct vdpctx {int /*<<< orphan*/  force_yuv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct vo *vo, int format)
{
    struct vdpctx *vc = vo->priv;

    if (FUNC0(format, NULL, NULL))
        return 1;
    if (!vc->force_yuv && FUNC1(format, NULL))
        return 1;
    return 0;
}