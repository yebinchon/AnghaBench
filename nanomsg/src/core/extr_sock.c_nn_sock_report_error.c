
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sock {char* socket_name; } ;
struct nn_ep {int dummy; } ;


 int fprintf (int ,char*,char*,char*,...) ;
 char* nn_ep_getaddr (struct nn_ep*) ;
 int nn_global_print_errors () ;
 char* nn_strerror (int) ;
 int stderr ;

void nn_sock_report_error (struct nn_sock *self, struct nn_ep *ep, int errnum)
{
    if (!nn_global_print_errors())
        return;

    if (errnum == 0)
        return;

    if (ep) {
        fprintf(stderr, "nanomsg: socket.%s[%s]: Error: %s\n",
            self->socket_name, nn_ep_getaddr(ep), nn_strerror(errnum));
    } else {
        fprintf(stderr, "nanomsg: socket.%s: Error: %s\n",
            self->socket_name, nn_strerror(errnum));
    }
}
