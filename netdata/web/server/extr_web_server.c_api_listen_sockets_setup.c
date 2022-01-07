
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D_WEB_CLIENT ;
 int api_sockets ;
 int debug_flags ;
 int debug_sockets () ;
 int fatal (char*) ;
 int listen_sockets_setup (int *) ;
 scalar_t__ unlikely (int) ;

void api_listen_sockets_setup(void) {
 int socks = listen_sockets_setup(&api_sockets);

 if(!socks)
  fatal("LISTENER: Cannot listen on any API socket. Exiting...");

 if(unlikely(debug_flags & D_WEB_CLIENT))
  debug_sockets();

 return;
}
