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
struct ra_d3d11 {int /*<<< orphan*/  ctx; } ;
struct ra {struct ra_d3d11* priv; } ;
struct d3d_timer {scalar_t__ ts_start; scalar_t__ disjoint; int /*<<< orphan*/  result; } ;
typedef  struct d3d_timer ra_timer ;
typedef  int /*<<< orphan*/  ID3D11Asynchronous ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ra*,struct d3d_timer*) ; 

__attribute__((used)) static void FUNC3(struct ra *ra, ra_timer *ratimer)
{
    struct ra_d3d11 *p = ra->priv;
    struct d3d_timer *timer = ratimer;

    // Latch the last result of this ra_timer (returned by timer_stop)
    timer->result = FUNC2(ra, ratimer);

    FUNC0(p->ctx, (ID3D11Asynchronous *)timer->disjoint);
    FUNC1(p->ctx, (ID3D11Asynchronous *)timer->ts_start);
}