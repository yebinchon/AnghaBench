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
struct socket_buffer_size {scalar_t__ rcvbuf; scalar_t__ sndbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_OSBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int const,int,int const,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(int fd, const struct socket_buffer_size *sbs)
{
    if (sbs)
    {
        const int sndbuf_old = FUNC2(fd);
        const int rcvbuf_old = FUNC1(fd);

        if (sbs->sndbuf)
        {
            FUNC4(fd, sbs->sndbuf);
        }

        if (sbs->rcvbuf)
        {
            FUNC3(fd, sbs->rcvbuf);
        }

        FUNC0(D_OSBUF, "Socket Buffers: R=[%d->%d] S=[%d->%d]",
            rcvbuf_old,
            FUNC1(fd),
            sndbuf_old,
            FUNC2(fd));
    }
}