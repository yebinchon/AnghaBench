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
struct TYPE_4__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/  length; scalar_t__ seedlen; int /*<<< orphan*/ * seed; int /*<<< orphan*/  j; int /*<<< orphan*/  q; int /*<<< orphan*/  g; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ DH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(DH *to, const DH *from, int is_x942)
{
    if (is_x942 == -1)
        is_x942 = ! !from->q;
    if (!FUNC2(&to->p, from->p))
        return 0;
    if (!FUNC2(&to->g, from->g))
        return 0;
    if (is_x942) {
        if (!FUNC2(&to->q, from->q))
            return 0;
        if (!FUNC2(&to->j, from->j))
            return 0;
        FUNC0(to->seed);
        to->seed = NULL;
        to->seedlen = 0;
        if (from->seed) {
            to->seed = FUNC1(from->seed, from->seedlen);
            if (!to->seed)
                return 0;
            to->seedlen = from->seedlen;
        }
    } else
        to->length = from->length;
    to->dirty_cnt++;
    return 1;
}