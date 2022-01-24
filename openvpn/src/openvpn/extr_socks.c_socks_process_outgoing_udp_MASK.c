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
struct TYPE_4__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_5__ {TYPE_1__ in4; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;
struct link_socket_actual {TYPE_3__ dest; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 struct buffer FUNC2 (struct buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*,char) ; 

int
FUNC6(struct buffer *buf,
                           const struct link_socket_actual *to)
{
    /*
     * Get a 10 byte subset buffer prepended to buf --
     * we expect these bytes will be here because
     * we allocated frame space in socks_adjust_frame_parameters.
     */
    struct buffer head = FUNC2(buf, 10, true);

    /* crash if not enough headroom in buf */
    FUNC0(FUNC1(&head));

    FUNC4(&head, 0);    /* RSV = 0 */
    FUNC5(&head, 0);     /* FRAG = 0 */
    FUNC5(&head, '\x01'); /* ATYP = 1 (IP V4) */
    FUNC3(&head, &to->dest.addr.in4.sin_addr, sizeof(to->dest.addr.in4.sin_addr));
    FUNC3(&head, &to->dest.addr.in4.sin_port, sizeof(to->dest.addr.in4.sin_port));

    return 10;
}