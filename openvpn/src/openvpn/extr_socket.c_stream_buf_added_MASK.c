#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int len; } ;
struct stream_buf {int len; scalar_t__ port_share_state; int error; int maxlen; TYPE_1__ buf; TYPE_1__ residual; } ;
typedef  int /*<<< orphan*/  packet_size_type ;
typedef  int /*<<< orphan*/  net_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  D_STREAM_DEBUG ; 
 int /*<<< orphan*/  D_STREAM_ERRORS ; 
 int /*<<< orphan*/  M_WARN ; 
 scalar_t__ PS_DISABLED ; 
 scalar_t__ PS_ENABLED ; 
 scalar_t__ PS_FOREIGN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct stream_buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct stream_buf*) ; 

__attribute__((used)) static bool
FUNC11(struct stream_buf *sb,
                 int length_added)
{
    FUNC5(D_STREAM_DEBUG, "STREAM: ADD length_added=%d", length_added);
    if (length_added > 0)
    {
        sb->buf.len += length_added;
    }

    /* if length unknown, see if we can get the length prefix from
     * the head of the buffer */
    if (sb->len < 0 && sb->buf.len >= (int) sizeof(packet_size_type))
    {
        packet_size_type net_size;

#if PORT_SHARE
        if (sb->port_share_state == PS_ENABLED)
        {
            if (!is_openvpn_protocol(&sb->buf))
            {
                msg(D_STREAM_ERRORS, "Non-OpenVPN client protocol detected");
                sb->port_share_state = PS_FOREIGN;
                sb->error = true;
                return false;
            }
            else
            {
                sb->port_share_state = PS_DISABLED;
            }
        }
#endif

        FUNC0(FUNC4(&sb->buf, &net_size, sizeof(net_size)));
        sb->len = FUNC8(net_size);

        if (sb->len < 1 || sb->len > sb->maxlen)
        {
            FUNC7(M_WARN, "WARNING: Bad encapsulated packet length from peer (%d), which must be > 0 and <= %d -- please ensure that --tun-mtu or --link-mtu is equal on both peers -- this condition could also indicate a possible active attack on the TCP link -- [Attempting restart...]", sb->len, sb->maxlen);
            FUNC9(sb);
            sb->error = true;
            return false;
        }
    }

    /* is our incoming packet fully read? */
    if (sb->len > 0 && sb->buf.len >= sb->len)
    {
        /* save any residual data that's part of the next packet */
        FUNC0(FUNC3(&sb->residual, 0));
        if (sb->buf.len > sb->len)
        {
            FUNC0(FUNC2(&sb->residual, &sb->buf, sb->len));
        }
        FUNC5(D_STREAM_DEBUG, "STREAM: ADD returned TRUE, buf_len=%d, residual_len=%d",
             FUNC1(&sb->buf),
             FUNC1(&sb->residual));
        return true;
    }
    else
    {
        FUNC5(D_STREAM_DEBUG, "STREAM: ADD returned FALSE (have=%d need=%d)", sb->buf.len, sb->len);
        FUNC10(sb);
        return false;
    }
}