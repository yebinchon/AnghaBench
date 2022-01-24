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
struct mp_refqueue {int /*<<< orphan*/  in_format; struct mp_image* next; } ;
struct mp_image {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_refqueue*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_refqueue*) ; 
 scalar_t__ FUNC6 (struct mp_refqueue*) ; 

struct mp_image *FUNC7(struct mp_refqueue *q)
{
    if (FUNC6(q) || !q->next)
        return NULL;

    struct mp_image *cur = q->next;
    q->next = NULL;

    FUNC3(&q->in_format);
    FUNC5(q);

    q->in_format = FUNC1(cur);
    if (!q->in_format)
        FUNC0();
    FUNC2(q->in_format);

    FUNC4(q, cur);
    return cur;
}