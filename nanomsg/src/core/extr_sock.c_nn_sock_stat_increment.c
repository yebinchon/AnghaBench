
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int established_connections; int accepted_connections; int dropped_connections; int broken_connections; int connect_errors; int bind_errors; int accept_errors; int messages_sent; int messages_received; int bytes_sent; int bytes_received; int current_connections; int inprogress_connections; int current_snd_priority; int current_ep_errors; } ;
struct nn_sock {TYPE_1__ statistics; } ;
typedef int int64_t ;


 int INT_MAX ;
 int nn_assert (int) ;

void nn_sock_stat_increment (struct nn_sock *self, int name, int64_t increment)
{
    switch (name) {
        case 131:
            nn_assert (increment > 0);
            self->statistics.established_connections += increment;
            break;
        case 142:
            nn_assert (increment > 0);
            self->statistics.accepted_connections += increment;
            break;
        case 132:
            nn_assert (increment > 0);
            self->statistics.dropped_connections += increment;
            break;
        case 139:
            nn_assert (increment > 0);
            self->statistics.broken_connections += increment;
            break;
        case 136:
            nn_assert (increment > 0);
            self->statistics.connect_errors += increment;
            break;
        case 140:
            nn_assert (increment > 0);
            self->statistics.bind_errors += increment;
            break;
        case 141:
            nn_assert (increment > 0);
            self->statistics.accept_errors += increment;
            break;
        case 128:
            nn_assert (increment > 0);
            self->statistics.messages_sent += increment;
            break;
        case 129:
            nn_assert (increment > 0);
            self->statistics.messages_received += increment;
            break;
        case 137:
            nn_assert (increment >= 0);
            self->statistics.bytes_sent += increment;
            break;
        case 138:
            nn_assert (increment >= 0);
            self->statistics.bytes_received += increment;
            break;

        case 135:
            nn_assert (increment > 0 ||
                self->statistics.current_connections >= -increment);
            nn_assert(increment < INT_MAX && increment > -INT_MAX);
            self->statistics.current_connections += (int) increment;
            break;
        case 130:
            nn_assert (increment > 0 ||
                self->statistics.inprogress_connections >= -increment);
            nn_assert(increment < INT_MAX && increment > -INT_MAX);
            self->statistics.inprogress_connections += (int) increment;
            break;
        case 133:

            nn_assert((increment > 0 && increment <= 16) || increment == -1);
            self->statistics.current_snd_priority = (int) increment;
            break;
        case 134:
            nn_assert (increment > 0 ||
                self->statistics.current_ep_errors >= -increment);
            nn_assert(increment < INT_MAX && increment > -INT_MAX);
            self->statistics.current_ep_errors += (int) increment;
            break;
    }
}
