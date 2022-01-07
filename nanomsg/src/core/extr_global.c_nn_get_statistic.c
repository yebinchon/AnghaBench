
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int current_ep_errors; int current_snd_priority; int inprogress_connections; int current_connections; int bytes_received; int bytes_sent; int messages_received; int messages_sent; int bind_errors; int connect_errors; int broken_connections; int dropped_connections; int accepted_connections; int established_connections; } ;
struct nn_sock {TYPE_1__ statistics; } ;


 int EINVAL ;
 int errno ;
 int nn_global_hold_socket (struct nn_sock**,int) ;
 int nn_global_rele_socket (struct nn_sock*) ;
 scalar_t__ nn_slow (int) ;

uint64_t nn_get_statistic (int s, int statistic)
{
    int rc;
    struct nn_sock *sock;
    uint64_t val;

    rc = nn_global_hold_socket (&sock, s);
    if (nn_slow (rc < 0)) {
        errno = -rc;
        return (uint64_t)-1;
    }

    switch (statistic) {
    case 131:
        val = sock->statistics.established_connections;
        break;
    case 142:
        val = sock->statistics.accepted_connections;
        break;
    case 132:
        val = sock->statistics.dropped_connections;
        break;
    case 139:
        val = sock->statistics.broken_connections;
        break;
    case 136:
        val = sock->statistics.connect_errors;
        break;
    case 140:
        val = sock->statistics.bind_errors;
        break;
    case 141:
        val = sock->statistics.bind_errors;
        break;
    case 128:
        val = sock->statistics.messages_sent;
        break;
    case 129:
        val = sock->statistics.messages_received;
        break;
    case 137:
        val = sock->statistics.bytes_sent;
        break;
    case 138:
        val = sock->statistics.bytes_received;
        break;
    case 135:
        val = sock->statistics.current_connections;
        break;
    case 130:
        val = sock->statistics.inprogress_connections;
        break;
    case 133:
        val = sock->statistics.current_snd_priority;
        break;
    case 134:
        val = sock->statistics.current_ep_errors;
        break;
    default:
        val = (uint64_t)-1;
        errno = EINVAL;
        break;
    }

    nn_global_rele_socket (sock);
    return val;
}
