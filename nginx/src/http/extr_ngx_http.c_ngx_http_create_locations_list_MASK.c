#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_queue_t ;
struct TYPE_4__ {int /*<<< orphan*/  list; TYPE_1__* name; int /*<<< orphan*/ * inclusive; } ;
typedef  TYPE_2__ ngx_http_location_queue_t ;
struct TYPE_3__ {size_t len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(ngx_queue_t *locations, ngx_queue_t *q)
{
    u_char                     *name;
    size_t                      len;
    ngx_queue_t                *x, tail;
    ngx_http_location_queue_t  *lq, *lx;

    if (q == FUNC3(locations)) {
        return;
    }

    lq = (ngx_http_location_queue_t *) q;

    if (lq->inclusive == NULL) {
        FUNC7(locations, FUNC4(q));
        return;
    }

    len = lq->name->len;
    name = lq->name->data;

    for (x = FUNC4(q);
         x != FUNC5(locations);
         x = FUNC4(x))
    {
        lx = (ngx_http_location_queue_t *) x;

        if (len > lx->name->len
            || FUNC0(name, lx->name->data, len) != 0)
        {
            break;
        }
    }

    q = FUNC4(q);

    if (q == x) {
        FUNC7(locations, x);
        return;
    }

    FUNC6(locations, q, &tail);
    FUNC1(&lq->list, &tail);

    if (x == FUNC5(locations)) {
        FUNC7(&lq->list, FUNC2(&lq->list));
        return;
    }

    FUNC6(&lq->list, x, &tail);
    FUNC1(locations, &tail);

    FUNC7(&lq->list, FUNC2(&lq->list));

    FUNC7(locations, x);
}