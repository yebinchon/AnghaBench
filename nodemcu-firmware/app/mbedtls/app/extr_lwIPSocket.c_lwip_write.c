
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* conn; } ;
typedef TYPE_2__ lwIP_sock ;
struct TYPE_4__ {int state; } ;



 TYPE_2__* get_socket (int) ;
 int lwip_send (int,void const*,size_t,int ) ;

int lwip_write(int s, const void *data, size_t size)
{
    lwIP_sock *sock = ((void*)0);
    int is_tcp = 0;
    size_t bytes_free = 0;

    sock = get_socket(s);
    if (!sock)
    {
        return -1;
    }

    if (sock->conn != ((void*)0))
    {
        switch (sock->conn->state)
        {
            case 128:
               return lwip_send(s, data, size, 0);
            default:
                return -1;
        }
    }
    else
    {
        return -1;
    }
}
