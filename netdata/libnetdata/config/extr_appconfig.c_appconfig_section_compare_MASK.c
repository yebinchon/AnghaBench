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
struct section {scalar_t__ hash; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(void *a, void *b) {
    if(((struct section *)a)->hash < ((struct section *)b)->hash) return -1;
    else if(((struct section *)a)->hash > ((struct section *)b)->hash) return 1;
    else return FUNC0(((struct section *)a)->name, ((struct section *)b)->name);
}