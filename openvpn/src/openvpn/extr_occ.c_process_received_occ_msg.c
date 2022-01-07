
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_12__ {int occ_op; TYPE_5__ buf; int occ_mtu_load_test_interval; void* max_send_size_local; void* max_send_size_remote; void* max_recv_size_local; void* max_recv_size_remote; int occ_interval; int options_string_remote; void* occ_mtu_load_size; } ;
struct TYPE_9__ {int proto; int fragment; } ;
struct TYPE_10__ {TYPE_1__ ce; int mtu_test; int occ; } ;
struct context {TYPE_4__ c2; TYPE_3__* sig; TYPE_2__ options; } ;
struct TYPE_11__ {char* signal_text; int signal_received; } ;


 int ASSERT (int ) ;
 scalar_t__ BPTR (TYPE_5__*) ;
 int D_PACKET_CONTENT ;
 int M_INFO ;

 int OCC_MTU_LOAD ;





 int OCC_STRING_SIZE ;
 int SIGTERM ;
 int TLS_MODE (struct context*) ;
 void* TUN_MTU_MIN ;
 int buf_advance (TYPE_5__*,int ) ;
 void* buf_read_u16 (TYPE_5__*) ;
 int buf_read_u8 (TYPE_5__*) ;
 int dmsg (int ,char*) ;
 int event_timeout_clear (int *) ;
 int msg (int ,char*,void*,...) ;
 int options_cmp_equal_safe (char*,int ,scalar_t__) ;
 int options_warning_safe (char*,int ,scalar_t__) ;
 int proto_is_dgram (int ) ;

void
process_received_occ_msg(struct context *c)
{
    ASSERT(buf_advance(&c->c2.buf, OCC_STRING_SIZE));
    switch (buf_read_u8(&c->c2.buf))
    {
        case 128:
            dmsg(D_PACKET_CONTENT, "RECEIVED OCC_REQUEST");
            c->c2.occ_op = 129;
            break;

        case 130:
            dmsg(D_PACKET_CONTENT, "RECEIVED OCC_MTU_REQUEST");
            c->c2.occ_op = 131;
            break;

        case 132:
            dmsg(D_PACKET_CONTENT, "RECEIVED OCC_MTU_LOAD_REQUEST");
            c->c2.occ_mtu_load_size = buf_read_u16(&c->c2.buf);
            if (c->c2.occ_mtu_load_size >= 0)
            {
                c->c2.occ_op = OCC_MTU_LOAD;
            }
            break;

        case 129:
            dmsg(D_PACKET_CONTENT, "RECEIVED OCC_REPLY");
            if (c->options.occ && !TLS_MODE(c) && c->c2.options_string_remote)
            {
                if (!options_cmp_equal_safe((char *) BPTR(&c->c2.buf),
                                            c->c2.options_string_remote,
                                            c->c2.buf.len))
                {
                    options_warning_safe((char *) BPTR(&c->c2.buf),
                                         c->c2.options_string_remote,
                                         c->c2.buf.len);
                }
            }
            event_timeout_clear(&c->c2.occ_interval);
            break;

        case 131:
            dmsg(D_PACKET_CONTENT, "RECEIVED OCC_MTU_REPLY");
            c->c2.max_recv_size_remote = buf_read_u16(&c->c2.buf);
            c->c2.max_send_size_remote = buf_read_u16(&c->c2.buf);
            if (c->options.mtu_test
                && c->c2.max_recv_size_remote > 0
                && c->c2.max_send_size_remote > 0)
            {
                msg(M_INFO, "NOTE: Empirical MTU test completed [Tried,Actual] local->remote=[%d,%d] remote->local=[%d,%d]",
                    c->c2.max_send_size_local,
                    c->c2.max_recv_size_remote,
                    c->c2.max_send_size_remote,
                    c->c2.max_recv_size_local);
                if (!c->options.ce.fragment
                    && (proto_is_dgram(c->options.ce.proto))
                    && c->c2.max_send_size_local > TUN_MTU_MIN
                    && (c->c2.max_recv_size_remote < c->c2.max_send_size_local
                        || c->c2.max_recv_size_local < c->c2.max_send_size_remote))
                {
                    msg(M_INFO, "NOTE: This connection is unable to accommodate a UDP packet size of %d. Consider using --fragment or --mssfix options as a workaround.",
                        c->c2.max_send_size_local);
                }
            }
            event_timeout_clear(&c->c2.occ_mtu_load_test_interval);
            break;

        case 133:
            dmsg(D_PACKET_CONTENT, "RECEIVED OCC_EXIT");
            c->sig->signal_received = SIGTERM;
            c->sig->signal_text = "remote-exit";
            break;
    }
    c->c2.buf.len = 0;
}
