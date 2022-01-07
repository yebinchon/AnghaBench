
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int proto; } ;
struct TYPE_6__ {int hEvent; } ;
struct TYPE_8__ {int buf_init; TYPE_2__ overlapped; } ;
struct TYPE_5__ {int write; int read; } ;
struct link_socket {TYPE_3__ info; int sockflags; int stream_buf_data; int stream_buf; TYPE_4__ reads; TYPE_4__ writes; TYPE_1__ rw_handle; } ;
struct frame {int dummy; } ;


 int FALSE ;
 int FRAME_HEADROOM_MARKER_READ_STREAM ;
 int TRUE ;
 int alloc_buf_sock_tun (int *,struct frame const*,int,int ) ;
 scalar_t__ link_socket_connection_oriented (struct link_socket*) ;
 int overlapped_io_init (TYPE_4__*,struct frame const*,int ,int) ;
 int stream_buf_init (int *,int *,int ,int ) ;

__attribute__((used)) static void
socket_frame_init(const struct frame *frame, struct link_socket *sock)
{







    if (link_socket_connection_oriented(sock))
    {






        alloc_buf_sock_tun(&sock->stream_buf_data,
                           frame,
                           0,
                           FRAME_HEADROOM_MARKER_READ_STREAM);

        stream_buf_init(&sock->stream_buf,
                        &sock->stream_buf_data,
                        sock->sockflags,
                        sock->info.proto);

    }
}
