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
struct buffer {int dummy; } ;
struct reliable_entry {int active; scalar_t__ packet_id; struct buffer buf; } ;
struct reliable {int size; scalar_t__ packet_id; struct reliable_entry* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(struct reliable *rel, struct buffer *buf, bool inc_pid)
{
    int i;
    for (i = 0; i < rel->size; ++i)
    {
        struct reliable_entry *e = &rel->array[i];
        if (buf == &e->buf)
        {
            e->active = false;
            if (inc_pid)
            {
                rel->packet_id = e->packet_id + 1;
            }
            return;
        }
    }
    FUNC0(0);
}