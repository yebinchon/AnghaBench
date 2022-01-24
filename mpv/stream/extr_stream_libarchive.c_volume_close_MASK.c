#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_archive_volume {int /*<<< orphan*/ * src; TYPE_1__* mpa; } ;
struct TYPE_2__ {int /*<<< orphan*/ * primary_src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct mp_archive_volume *vol)
{
    // don't close the primary stream
    if (vol->src && vol->src != vol->mpa->primary_src) {
        FUNC0(vol->src);
        vol->src = NULL;
    }
}