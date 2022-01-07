
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* cb_printf ) (char*,char*) ;} ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;


 int free (char*) ;
 int rURL (int *) ;
 char* r_socket_http_get (char*,int*,int*) ;
 char* r_str_newf (char*,int ,char*) ;
 char* r_str_uri_encode (char const*) ;
 int stub1 (char*,char*) ;

__attribute__((used)) static char *__system(RIO *io, RIODesc *fd, const char *command) {
 if (!*command) {
  return ((void*)0);
 }
 int code, rlen;
 char *cmd = r_str_uri_encode (command);
 char *url = r_str_newf ("%s/%s", rURL(fd), cmd);
 char *out = r_socket_http_get (url, &code, &rlen);
 if (out && rlen > 0) {
  io->cb_printf ("%s", out);
 }
 free (out);
 free (url);
 free (cmd);
 return ((void*)0);
}
