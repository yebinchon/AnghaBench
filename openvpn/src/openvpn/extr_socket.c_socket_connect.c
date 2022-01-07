
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct signal_info {int source; scalar_t__ signal_received; } ;
struct gc_arena {int dummy; } ;
typedef int socket_descriptor_t ;


 int D_LINK_ERRORS ;
 int M_INFO ;
 int OPENVPN_STATE_TCP_CONNECT ;
 scalar_t__ SIGUSR1 ;
 int SIG_SOURCE_CONNECTION_FAILED ;
 int SOCKET_UNDEFINED ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int get_signal (scalar_t__*) ;
 scalar_t__ management ;
 int management_set_state (scalar_t__,int ,int *,int *,int *,int *,int *) ;
 int msg (int ,char*,int ,...) ;
 int openvpn_close_socket (int ) ;
 int openvpn_connect (int ,struct sockaddr const*,int const,scalar_t__*) ;
 int print_sockaddr (struct sockaddr const*,struct gc_arena*) ;
 int strerror (int) ;

__attribute__((used)) static void
socket_connect(socket_descriptor_t *sd,
               const struct sockaddr *dest,
               const int connect_timeout,
               struct signal_info *sig_info)
{
    struct gc_arena gc = gc_new();
    int status;





    msg(M_INFO, "Attempting to establish TCP connection with %s",
        print_sockaddr(dest, &gc));
    status = openvpn_connect(*sd, dest, connect_timeout, &sig_info->signal_received);

    get_signal(&sig_info->signal_received);
    if (sig_info->signal_received)
    {
        goto done;
    }

    if (status)
    {

        msg(D_LINK_ERRORS, "TCP: connect to %s failed: %s",
            print_sockaddr(dest, &gc), strerror(status));

        openvpn_close_socket(*sd);
        *sd = SOCKET_UNDEFINED;
        sig_info->signal_received = SIGUSR1;
        sig_info->source = SIG_SOURCE_CONNECTION_FAILED;
    }
    else
    {
        msg(M_INFO, "TCP connection established with %s",
            print_sockaddr(dest, &gc));
    }

done:
    gc_free(&gc);
}
