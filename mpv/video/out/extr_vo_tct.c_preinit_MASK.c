#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vo {int monitor_par; int /*<<< orphan*/  global; int /*<<< orphan*/  log; struct priv* priv; TYPE_1__* opts; } ;
struct priv {TYPE_2__* sws; int /*<<< orphan*/  opts; } ;
struct TYPE_5__ {int /*<<< orphan*/  log; } ;
struct TYPE_4__ {int monitor_pixel_aspect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vo_tct_conf ; 

__attribute__((used)) static int FUNC3(struct vo *vo)
{
    // most terminal characters aren't 1:1, so we default to 2:1.
    // if user passes their own value of choice, it'll be scaled accordingly.
    vo->monitor_par = vo->opts->monitor_pixel_aspect * 2;

    struct priv *p = vo->priv;
    p->opts = FUNC0(vo, vo->global, &vo_tct_conf);
    p->sws = FUNC1(vo);
    p->sws->log = vo->log;
    FUNC2(p->sws, vo->global);
    return 0;
}