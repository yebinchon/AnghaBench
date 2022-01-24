#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ residual_fully_formed; } ;
struct link_socket {int stream_reset; TYPE_1__ stream_buf; int /*<<< orphan*/  sd; int /*<<< orphan*/  reads; } ;
struct buffer {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct buffer*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct buffer*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct buffer*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int
FUNC8(struct link_socket *sock,
                     struct buffer *buf)
{
    int len = 0;

    if (!sock->stream_buf.residual_fully_formed)
    {
#ifdef _WIN32
        len = socket_finalize(sock->sd, &sock->reads, buf, NULL);
#else
        struct buffer frag;
        FUNC6(&sock->stream_buf, &frag);
        len = FUNC2(sock->sd, FUNC1(&frag), FUNC0(&frag), MSG_NOSIGNAL);
#endif

        if (!len)
        {
            sock->stream_reset = true;
        }
        if (len <= 0)
        {
            return buf->len = len;
        }
    }

    if (sock->stream_buf.residual_fully_formed
        || FUNC4(&sock->stream_buf, len)) /* packet complete? */
    {
        FUNC5(&sock->stream_buf, buf);
        FUNC7(&sock->stream_buf);
        return buf->len;
    }
    else
    {
        return buf->len = 0; /* no error, but packet is still incomplete */
    }
}