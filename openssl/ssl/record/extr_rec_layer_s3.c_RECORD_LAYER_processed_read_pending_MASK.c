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
struct TYPE_4__ {int /*<<< orphan*/ * rrec; } ;
typedef  int /*<<< orphan*/  SSL3_RECORD ;
typedef  TYPE_1__ RECORD_LAYER ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

int FUNC2(const RECORD_LAYER *rl)
{
    size_t curr_rec = 0, num_recs = FUNC0(rl);
    const SSL3_RECORD *rr = rl->rrec;

    while (curr_rec < num_recs && FUNC1(&rr[curr_rec]))
        curr_rec++;

    return curr_rec < num_recs;
}