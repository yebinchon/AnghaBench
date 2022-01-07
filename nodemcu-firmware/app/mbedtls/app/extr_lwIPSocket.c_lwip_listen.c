
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conn; } ;
typedef TYPE_1__ lwIP_sock ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_OK ;
 int ESP_LOG (char*,int,...) ;
 TYPE_1__* get_socket (int) ;
 scalar_t__ netconn_listen (int ) ;

int lwip_listen(int s, int backlog)
{
    lwIP_sock *sock = ((void*)0);
    err_t err = ERR_OK;
    sock = get_socket(s);
    if (!sock)
    {
        return -1;
    }
    err = netconn_listen(sock->conn);
    if (err != ERR_OK)
    {
        ESP_LOG("lwip_connect(%d) failed, err=%d\n", s, err);
        return -1;
    }

    ESP_LOG("lwip_connect(%d) succeeded\n", s);

    return ERR_OK;
}
