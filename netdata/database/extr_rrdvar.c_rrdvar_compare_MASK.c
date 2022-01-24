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
struct TYPE_2__ {scalar_t__ hash; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ RRDVAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(void* a, void* b) {
    if(((RRDVAR *)a)->hash < ((RRDVAR *)b)->hash) return -1;
    else if(((RRDVAR *)a)->hash > ((RRDVAR *)b)->hash) return 1;
    else return FUNC0(((RRDVAR *)a)->name, ((RRDVAR *)b)->name);
}