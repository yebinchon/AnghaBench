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
struct TYPE_3__ {int num_ff_side_data; TYPE_2__* ff_side_data; int /*<<< orphan*/  a53_cc; int /*<<< orphan*/  icc_profile; int /*<<< orphan*/  hwctx; int /*<<< orphan*/ * bufs; } ;
typedef  TYPE_1__ mp_image_t ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int MP_MAX_PLANES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(void *ptr)
{
    mp_image_t *mpi = ptr;
    for (int p = 0; p < MP_MAX_PLANES; p++)
        FUNC0(&mpi->bufs[p]);
    FUNC0(&mpi->hwctx);
    FUNC0(&mpi->icc_profile);
    FUNC0(&mpi->a53_cc);
    for (int n = 0; n < mpi->num_ff_side_data; n++)
        FUNC0(&mpi->ff_side_data[n].buf);
    FUNC1(mpi->ff_side_data);
}