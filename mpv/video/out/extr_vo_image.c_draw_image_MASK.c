#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vo {int /*<<< orphan*/  osd; int /*<<< orphan*/  params; struct priv* priv; } ;
struct priv {TYPE_1__* current; } ;
struct mp_osd_res {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pts; } ;
typedef  TYPE_1__ mp_image_t ;

/* Variables and functions */
 int /*<<< orphan*/  OSD_DRAW_SUB_ONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mp_osd_res,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct mp_osd_res FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vo *vo, mp_image_t *mpi)
{
    struct priv *p = vo->priv;

    p->current = mpi;

    struct mp_osd_res dim = FUNC1(vo->params);
    FUNC0(vo->osd, dim, mpi->pts, OSD_DRAW_SUB_ONLY, p->current);
}