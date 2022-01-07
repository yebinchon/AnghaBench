
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RSocket ;


 int R_FREE (int *) ;
 int R_SOCKET_PROTO_TCP ;
 int SIGINT ;
 int SIG_IGN ;
 int eprintf (char*) ;
 int free (char*) ;
 int * r_socket_accept (int *) ;
 scalar_t__ r_socket_connect (int *,char*,char*,int ,int ) ;
 int r_socket_free (int *) ;
 int r_socket_listen (int *,char const*,int *) ;
 int * r_socket_new (int) ;
 int * r_socket_slurp (int *,int*) ;
 int r_sys_signal (int ,int ) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static ut8 *tcpme (const char *pathname, int *code, int *len) {
 pathname += 6;
 *code = 404;



 if (*pathname == ':') {

  RSocket *sl = r_socket_new (0);
  if (!r_socket_listen (sl, pathname + 1, ((void*)0))) {
   eprintf ("Cannot listen\n");
   r_socket_free (sl);
   return ((void*)0);
  }
  RSocket *sc = r_socket_accept (sl);
  ut8 *res = r_socket_slurp (sc, len);
  r_socket_free (sc);
  r_socket_free (sl);
  if (res) {
   *code = 200;
   return res;
  }
 } else {

  char *host = strdup (pathname);
  if (!host) {
   return ((void*)0);
  }
  char *port = strchr (host, ':');
  if (port) {
   *port++ = 0;
   RSocket *s = r_socket_new (0);
   if (r_socket_connect (s, host, port, R_SOCKET_PROTO_TCP, 0)) {
    ut8 *res = r_socket_slurp (s, len);
    if (*len < 1) {
     R_FREE (res);
    } else {
     *code = 200;
    }
    r_socket_free (s);
    free (host);
    return res;
   }
   r_socket_free (s);
  } else {
   eprintf ("Missing port.\n");
  }
  free (host);
 }
 return ((void*)0);
}
