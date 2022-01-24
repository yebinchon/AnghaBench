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
struct mp_refqueue {scalar_t__ num_queue; scalar_t__ pos; int /*<<< orphan*/  queue; } ;
struct mp_image {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_refqueue*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct mp_refqueue *q, struct mp_image *img)
{
    FUNC1(img);

    FUNC0(q, q->queue, q->num_queue, 0, img);
    q->pos++;

    FUNC1(q->pos >= 0 && q->pos < q->num_queue);
}