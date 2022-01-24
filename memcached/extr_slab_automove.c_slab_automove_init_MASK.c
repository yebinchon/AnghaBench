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
typedef  int uint32_t ;
struct window_data {int dummy; } ;
struct settings {int slab_automove_window; double slab_automove_ratio; } ;
struct TYPE_3__ {int window_size; double max_age_ratio; int /*<<< orphan*/  sam_before; int /*<<< orphan*/  iam_before; int /*<<< orphan*/ * window_data; } ;
typedef  TYPE_1__ slab_automove ;

/* Variables and functions */
 int MAX_NUMBER_OF_SLAB_CLASSES ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void *FUNC4(struct settings *settings) {
    uint32_t window_size = settings->slab_automove_window;
    double max_age_ratio = settings->slab_automove_ratio;
    slab_automove *a = FUNC0(1, sizeof(slab_automove));
    if (a == NULL)
        return NULL;
    a->window_data = FUNC0(window_size * MAX_NUMBER_OF_SLAB_CLASSES, sizeof(struct window_data));
    a->window_size = window_size;
    a->max_age_ratio = max_age_ratio;
    if (a->window_data == NULL) {
        FUNC3(a);
        return NULL;
    }

    // do a dry run to fill the before structs
    FUNC1(a->iam_before);
    FUNC2(a->sam_before);

    return (void *)a;
}