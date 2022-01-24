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
struct wined3d_cs_queue {scalar_t__ volatile tail; int /*<<< orphan*/  head; } ;
struct wined3d_cs {int dummy; } ;
typedef  scalar_t__ LONG ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_cs const*) ; 

__attribute__((used)) static BOOL FUNC1(const struct wined3d_cs *cs, const struct wined3d_cs_queue *queue)
{
    FUNC0(cs);
    return *(volatile LONG *)&queue->head == queue->tail;
}