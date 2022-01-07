
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct addrinfo {int ai_addr; } ;
typedef int socket_descriptor_t ;


 int ASSERT (struct addrinfo const*) ;
 int M_ERR ;
 int M_INFO ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 scalar_t__ listen (int ,int) ;
 int msg (int ,char*,...) ;
 int print_sockaddr (int ,struct gc_arena*) ;
 int set_nonblock (int ) ;

__attribute__((used)) static void
socket_do_listen(socket_descriptor_t sd,
                 const struct addrinfo *local,
                 bool do_listen,
                 bool do_set_nonblock)
{
    struct gc_arena gc = gc_new();
    if (do_listen)
    {
        ASSERT(local);
        msg(M_INFO, "Listening for incoming TCP connection on %s",
            print_sockaddr(local->ai_addr, &gc));
        if (listen(sd, 32))
        {
            msg(M_ERR, "TCP: listen() failed");
        }
    }


    if (do_set_nonblock)
    {
        set_nonblock(sd);
    }

    gc_free(&gc);
}
