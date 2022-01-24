#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t count; struct TYPE_5__* master; int /*<<< orphan*/  hash; } ;
typedef  TYPE_1__ redisCachedCluster ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(redisCachedCluster *rcc) {
    size_t i;

    /* Free masters */
    for (i = 0; i < rcc->count; i++) {
        FUNC0(&rcc->master[i]);
    }

    /* Free hash key */
    FUNC2(rcc->hash);
    FUNC1(rcc->master, 1);
    FUNC1(rcc, 1);
}