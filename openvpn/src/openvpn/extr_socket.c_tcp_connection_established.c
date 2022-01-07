
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket_actual {int dummy; } ;
struct gc_arena {int dummy; } ;


 int M_INFO ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,int ) ;
 int print_link_socket_actual (struct link_socket_actual const*,struct gc_arena*) ;

__attribute__((used)) static void
tcp_connection_established(const struct link_socket_actual *act)
{
    struct gc_arena gc = gc_new();
    msg(M_INFO, "TCP connection established with %s",
        print_link_socket_actual(act, &gc));
    gc_free(&gc);
}
