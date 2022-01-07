
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int socket_type; int send_timeout; scalar_t__ recv_timeout; int* socket_name; } ;
typedef TYPE_1__ nn_options_t ;
typedef int millis ;


 int AF_SP ;
 int NN_SNDTIMEO ;
 int NN_SOCKET_NAME ;
 int NN_SOL_SOCKET ;

 int nn_assert_errno (int,char*) ;
 int nn_set_recv_timeout (int,int) ;
 int nn_setsockopt (int,int ,int ,int*,int) ;
 int nn_socket (int ,int) ;
 int nn_sub_init (TYPE_1__*,int) ;
 int strlen (int*) ;

int nn_create_socket (nn_options_t *options)
{
    int sock;
    int rc;
    int millis;

    sock = nn_socket (AF_SP, options->socket_type);
    nn_assert_errno (sock >= 0, "Can't create socket");


    if (options->send_timeout >= 0) {
        millis = (int)(options->send_timeout * 1000);
        rc = nn_setsockopt (sock, NN_SOL_SOCKET, NN_SNDTIMEO,
                           &millis, sizeof (millis));
        nn_assert_errno (rc == 0, "Can't set send timeout");
    }
    if (options->recv_timeout >= 0) {
        nn_set_recv_timeout (sock, (int) options->recv_timeout * 1000);
    }
    if (options->socket_name) {
        rc = nn_setsockopt (sock, NN_SOL_SOCKET, NN_SOCKET_NAME,
                           options->socket_name, strlen(options->socket_name));
        nn_assert_errno (rc == 0, "Can't set socket name");
    }


    switch (options->socket_type) {
    case 128:
        nn_sub_init (options, sock);
        break;
    }

    return sock;
}
