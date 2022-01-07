
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int occ_op; int buf; int frame; int occ_mtu_load_size; int max_send_size_local; int max_recv_size_local; int options_string_local; TYPE_1__* buffers; } ;
struct context {TYPE_2__ c2; } ;
struct TYPE_3__ {int aux_buf; } ;


 int ASSERT (int ) ;
 int BLEN (int *) ;
 int D_PACKET_CONTENT ;
 int EXPANDED_SIZE (int *) ;
 int EXTRA_FRAME (int *) ;
 int FRAME_HEADROOM (int *) ;
 int MAX_RW_SIZE_TUN (int *) ;







 scalar_t__ OCC_STRING_SIZE ;
 int buf_init (int *,int ) ;
 int buf_safe (int *,int ) ;
 int buf_write (int *,int ,scalar_t__) ;
 int buf_write_u16 (int *,int ) ;
 int buf_write_u8 (int *,int const) ;
 int dmsg (int ,char*,...) ;
 int encrypt_sign (struct context*,int) ;
 int get_random () ;
 scalar_t__ min_int (int ,int ) ;
 int occ_magic ;
 int strlen (int ) ;

void
check_send_occ_msg_dowork(struct context *c)
{
    bool doit = 0;

    c->c2.buf = c->c2.buffers->aux_buf;
    ASSERT(buf_init(&c->c2.buf, FRAME_HEADROOM(&c->c2.frame)));
    ASSERT(buf_safe(&c->c2.buf, MAX_RW_SIZE_TUN(&c->c2.frame)));
    ASSERT(buf_write(&c->c2.buf, occ_magic, OCC_STRING_SIZE));

    switch (c->c2.occ_op)
    {
        case 128:
            if (!buf_write_u8(&c->c2.buf, 128))
            {
                break;
            }
            dmsg(D_PACKET_CONTENT, "SENT OCC_REQUEST");
            doit = 1;
            break;

        case 129:
            if (!c->c2.options_string_local)
            {
                break;
            }
            if (!buf_write_u8(&c->c2.buf, 129))
            {
                break;
            }
            if (!buf_write(&c->c2.buf, c->c2.options_string_local,
                           strlen(c->c2.options_string_local) + 1))
            {
                break;
            }
            dmsg(D_PACKET_CONTENT, "SENT OCC_REPLY");
            doit = 1;
            break;

        case 130:
            if (!buf_write_u8(&c->c2.buf, 130))
            {
                break;
            }
            dmsg(D_PACKET_CONTENT, "SENT OCC_MTU_REQUEST");
            doit = 1;
            break;

        case 131:
            if (!buf_write_u8(&c->c2.buf, 131))
            {
                break;
            }
            if (!buf_write_u16(&c->c2.buf, c->c2.max_recv_size_local))
            {
                break;
            }
            if (!buf_write_u16(&c->c2.buf, c->c2.max_send_size_local))
            {
                break;
            }
            dmsg(D_PACKET_CONTENT, "SENT OCC_MTU_REPLY");
            doit = 1;
            break;

        case 132:
            if (!buf_write_u8(&c->c2.buf, 132))
            {
                break;
            }
            if (!buf_write_u16(&c->c2.buf, c->c2.occ_mtu_load_size))
            {
                break;
            }
            dmsg(D_PACKET_CONTENT, "SENT OCC_MTU_LOAD_REQUEST");
            doit = 1;
            break;

        case 133:
        {
            int need_to_add;

            if (!buf_write_u8(&c->c2.buf, 133))
            {
                break;
            }
            need_to_add = min_int(c->c2.occ_mtu_load_size, EXPANDED_SIZE(&c->c2.frame))
                          - OCC_STRING_SIZE
                          - sizeof(uint8_t)
                          - EXTRA_FRAME(&c->c2.frame);

            while (need_to_add > 0)
            {



                if (!buf_write_u8(&c->c2.buf, get_random() & 0xFF))
                {
                    break;
                }
                --need_to_add;
            }
            dmsg(D_PACKET_CONTENT, "SENT OCC_MTU_LOAD min_int(%d-%d-%d-%d,%d) size=%d",
                 c->c2.occ_mtu_load_size,
                 OCC_STRING_SIZE,
                 (int) sizeof(uint8_t),
                 EXTRA_FRAME(&c->c2.frame),
                 MAX_RW_SIZE_TUN(&c->c2.frame),
                 BLEN(&c->c2.buf));
            doit = 1;
        }
        break;

        case 134:
            if (!buf_write_u8(&c->c2.buf, 134))
            {
                break;
            }
            dmsg(D_PACKET_CONTENT, "SENT OCC_EXIT");
            doit = 1;
            break;
    }

    if (doit)
    {




        encrypt_sign(c, 1);
    }

    c->c2.occ_op = -1;
}
