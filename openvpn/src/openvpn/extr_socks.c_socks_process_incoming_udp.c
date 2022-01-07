
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sin_port; int sin_addr; } ;
struct TYPE_4__ {TYPE_3__ in4; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct link_socket_actual {TYPE_2__ dest; } ;
struct buffer {scalar_t__ len; } ;


 int BLEN (struct buffer*) ;
 int buf_read (struct buffer*,int *,int) ;
 int buf_read_u16 (struct buffer*) ;
 int buf_read_u8 (struct buffer*) ;

void
socks_process_incoming_udp(struct buffer *buf,
                           struct link_socket_actual *from)
{
    int atyp;

    if (BLEN(buf) < 10)
    {
        goto error;
    }

    buf_read_u16(buf);
    if (buf_read_u8(buf) != 0)
    {
        goto error;
    }

    atyp = buf_read_u8(buf);
    if (atyp != 1)
    {
        goto error;
    }

    buf_read(buf, &from->dest.addr.in4.sin_addr, sizeof(from->dest.addr.in4.sin_addr));
    buf_read(buf, &from->dest.addr.in4.sin_port, sizeof(from->dest.addr.in4.sin_port));

    return;

error:
    buf->len = 0;
}
