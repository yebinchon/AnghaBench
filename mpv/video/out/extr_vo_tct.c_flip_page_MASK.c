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
struct vo {int /*<<< orphan*/  dheight; int /*<<< orphan*/  dwidth; struct priv* priv; } ;
struct priv {TYPE_2__* opts; TYPE_1__* frame; int /*<<< orphan*/  sheight; int /*<<< orphan*/  swidth; } ;
struct TYPE_4__ {scalar_t__ algo; int /*<<< orphan*/  term256; } ;
struct TYPE_3__ {int /*<<< orphan*/ * stride; int /*<<< orphan*/ * planes; } ;

/* Variables and functions */
 scalar_t__ ALGO_PLAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (p->opts->algo == ALGO_PLAIN) {
        FUNC2(
            vo->dwidth, vo->dheight, p->swidth, p->sheight,
            p->frame->planes[0], p->frame->stride[0],
            p->opts->term256);
    } else {
        FUNC1(
            vo->dwidth, vo->dheight, p->swidth, p->sheight,
            p->frame->planes[0], p->frame->stride[0],
            p->opts->term256);
    }
    FUNC0(stdout);
}