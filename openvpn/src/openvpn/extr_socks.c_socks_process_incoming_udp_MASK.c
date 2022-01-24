#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_4__ {TYPE_3__ in4; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct link_socket_actual {TYPE_2__ dest; } ;
struct buffer {scalar_t__ len; } ;

/* Variables and functions */
 int FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*) ; 
 int FUNC3 (struct buffer*) ; 

void
FUNC4(struct buffer *buf,
                           struct link_socket_actual *from)
{
    int atyp;

    if (FUNC0(buf) < 10)
    {
        goto error;
    }

    FUNC2(buf);
    if (FUNC3(buf) != 0)
    {
        goto error;
    }

    atyp = FUNC3(buf);
    if (atyp != 1)              /* ATYP == 1 (IP V4) */
    {
        goto error;
    }

    FUNC1(buf, &from->dest.addr.in4.sin_addr, sizeof(from->dest.addr.in4.sin_addr));
    FUNC1(buf, &from->dest.addr.in4.sin_port, sizeof(from->dest.addr.in4.sin_port));

    return;

error:
    buf->len = 0;
}