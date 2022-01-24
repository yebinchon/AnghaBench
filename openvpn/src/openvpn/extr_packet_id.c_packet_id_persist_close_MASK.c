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
struct packet_id_persist {int /*<<< orphan*/  filename; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int D_PID_PERSIST ; 
 int M_ERRNO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct packet_id_persist*) ; 
 int /*<<< orphan*/  FUNC3 (struct packet_id_persist*) ; 

void
FUNC4(struct packet_id_persist *p)
{
    if (FUNC2(p))
    {
        if (FUNC0(p->fd))
        {
            FUNC1(D_PID_PERSIST | M_ERRNO, "Close error on --replay-persist file %s", p->filename);
        }
        FUNC3(p);
    }
}