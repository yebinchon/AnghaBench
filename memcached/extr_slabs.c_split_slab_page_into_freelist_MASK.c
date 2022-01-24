#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int perslab; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ slabclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int const) ; 
 TYPE_1__* slabclass ; 

__attribute__((used)) static void FUNC1(char *ptr, const unsigned int id) {
    slabclass_t *p = &slabclass[id];
    int x;
    for (x = 0; x < p->perslab; x++) {
        FUNC0(ptr, 0, id);
        ptr += p->size;
    }
}