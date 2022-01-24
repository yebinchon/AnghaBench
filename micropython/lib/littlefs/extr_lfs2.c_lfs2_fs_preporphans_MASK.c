#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tag; } ;
struct TYPE_6__ {TYPE_2__ gpending; TYPE_2__ gdelta; } ;
typedef  TYPE_1__ lfs2_t ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(lfs2_t *lfs2, int8_t orphans) {
    lfs2->gpending.tag += orphans;
    FUNC1(&lfs2->gdelta,   &lfs2->gpending,
            FUNC0(&lfs2->gpending));
    FUNC1(&lfs2->gpending, &lfs2->gpending,
            FUNC0(&lfs2->gpending));
}