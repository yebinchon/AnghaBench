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
struct ra_tex {int /*<<< orphan*/  priv; } ;
struct ra {int dummy; } ;
struct mp_rect {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 

__attribute__((used)) static void FUNC2(struct ra *ra, struct ra_tex *dst, float color[4],
                     struct mp_rect *scissor)
{
    // TODO: implement scissor clearing by bltting a 1x1 tex instead
    FUNC1(FUNC0(ra), dst->priv, color);
}