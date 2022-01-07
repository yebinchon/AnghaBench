
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; } ;
struct stream_buf {int len; scalar_t__ port_share_state; int error; int maxlen; TYPE_1__ buf; TYPE_1__ residual; } ;
typedef int packet_size_type ;
typedef int net_size ;


 int ASSERT (int ) ;
 int BLEN (TYPE_1__*) ;
 int D_STREAM_DEBUG ;
 int D_STREAM_ERRORS ;
 int M_WARN ;
 scalar_t__ PS_DISABLED ;
 scalar_t__ PS_ENABLED ;
 scalar_t__ PS_FOREIGN ;
 int buf_copy_excess (TYPE_1__*,TYPE_1__*,int) ;
 int buf_init (TYPE_1__*,int ) ;
 int buf_read (TYPE_1__*,int *,int) ;
 int dmsg (int ,char*,int,...) ;
 int is_openvpn_protocol (TYPE_1__*) ;
 int msg (int ,char*,...) ;
 int ntohps (int ) ;
 int stream_buf_reset (struct stream_buf*) ;
 int stream_buf_set_next (struct stream_buf*) ;

__attribute__((used)) static bool
stream_buf_added(struct stream_buf *sb,
                 int length_added)
{
    dmsg(D_STREAM_DEBUG, "STREAM: ADD length_added=%d", length_added);
    if (length_added > 0)
    {
        sb->buf.len += length_added;
    }



    if (sb->len < 0 && sb->buf.len >= (int) sizeof(packet_size_type))
    {
        packet_size_type net_size;
        ASSERT(buf_read(&sb->buf, &net_size, sizeof(net_size)));
        sb->len = ntohps(net_size);

        if (sb->len < 1 || sb->len > sb->maxlen)
        {
            msg(M_WARN, "WARNING: Bad encapsulated packet length from peer (%d), which must be > 0 and <= %d -- please ensure that --tun-mtu or --link-mtu is equal on both peers -- this condition could also indicate a possible active attack on the TCP link -- [Attempting restart...]", sb->len, sb->maxlen);
            stream_buf_reset(sb);
            sb->error = 1;
            return 0;
        }
    }


    if (sb->len > 0 && sb->buf.len >= sb->len)
    {

        ASSERT(buf_init(&sb->residual, 0));
        if (sb->buf.len > sb->len)
        {
            ASSERT(buf_copy_excess(&sb->residual, &sb->buf, sb->len));
        }
        dmsg(D_STREAM_DEBUG, "STREAM: ADD returned TRUE, buf_len=%d, residual_len=%d",
             BLEN(&sb->buf),
             BLEN(&sb->residual));
        return 1;
    }
    else
    {
        dmsg(D_STREAM_DEBUG, "STREAM: ADD returned FALSE (have=%d need=%d)", sb->buf.len, sb->len);
        stream_buf_set_next(sb);
        return 0;
    }
}
