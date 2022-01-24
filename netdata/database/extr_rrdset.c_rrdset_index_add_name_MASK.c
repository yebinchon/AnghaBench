#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  avl ;
struct TYPE_8__ {int /*<<< orphan*/  rrdset_root_index_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  avlname; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (void*) ; 

RRDSET *FUNC2(RRDHOST *host, RRDSET *st) {
    void *result;
    // fprintf(stderr, "ADDING: %s (name: %s)\n", st->id, st->name);
    result = FUNC0(&host->rrdset_root_index_name, (avl *) (&st->avlname));
    if(result) return FUNC1(result);
    return NULL;
}