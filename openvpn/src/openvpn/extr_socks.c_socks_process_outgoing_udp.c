
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin_port; int sin_addr; } ;
struct TYPE_5__ {TYPE_1__ in4; } ;
struct TYPE_6__ {TYPE_2__ addr; } ;
struct link_socket_actual {TYPE_3__ dest; } ;
struct buffer {int dummy; } ;


 int ASSERT (int ) ;
 int buf_defined (struct buffer*) ;
 struct buffer buf_sub (struct buffer*,int,int) ;
 int buf_write (struct buffer*,int *,int) ;
 int buf_write_u16 (struct buffer*,int ) ;
 int buf_write_u8 (struct buffer*,char) ;

int
socks_process_outgoing_udp(struct buffer *buf,
                           const struct link_socket_actual *to)
{





    struct buffer head = buf_sub(buf, 10, 1);


    ASSERT(buf_defined(&head));

    buf_write_u16(&head, 0);
    buf_write_u8(&head, 0);
    buf_write_u8(&head, '\x01');
    buf_write(&head, &to->dest.addr.in4.sin_addr, sizeof(to->dest.addr.in4.sin_addr));
    buf_write(&head, &to->dest.addr.in4.sin_port, sizeof(to->dest.addr.in4.sin_port));

    return 10;
}
