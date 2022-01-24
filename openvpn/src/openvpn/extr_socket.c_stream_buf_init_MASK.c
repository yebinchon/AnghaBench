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
struct buffer {scalar_t__ len; } ;
struct stream_buf {int error; scalar_t__ maxlen; int /*<<< orphan*/  port_share_state; int /*<<< orphan*/  residual; struct buffer buf_init; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM_DEBUG ; 
 int const PROTO_TCP_SERVER ; 
 int /*<<< orphan*/  PS_DISABLED ; 
 int /*<<< orphan*/  PS_ENABLED ; 
 unsigned int const SF_PORT_SHARE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct stream_buf*) ; 

__attribute__((used)) static void
FUNC3(struct stream_buf *sb,
                struct buffer *buf,
                const unsigned int sockflags,
                const int proto)
{
    sb->buf_init = *buf;
    sb->maxlen = sb->buf_init.len;
    sb->buf_init.len = 0;
    sb->residual = FUNC0(sb->maxlen);
    sb->error = false;
#if PORT_SHARE
    sb->port_share_state = ((sockflags & SF_PORT_SHARE) && (proto == PROTO_TCP_SERVER))
                           ? PS_ENABLED
                           : PS_DISABLED;
#endif
    FUNC2(sb);

    FUNC1(D_STREAM_DEBUG, "STREAM: INIT maxlen=%d", sb->maxlen);
}