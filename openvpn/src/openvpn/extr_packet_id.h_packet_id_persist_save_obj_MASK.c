#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct packet_id_persist {int /*<<< orphan*/  id; scalar_t__ time; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; scalar_t__ time; } ;
struct packet_id {TYPE_1__ rec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct packet_id_persist*) ; 

__attribute__((used)) static inline void
FUNC1(struct packet_id_persist *p, const struct packet_id *pid)
{
    if (FUNC0(p) && pid->rec.time)
    {
        p->time = pid->rec.time;
        p->id = pid->rec.id;
    }
}