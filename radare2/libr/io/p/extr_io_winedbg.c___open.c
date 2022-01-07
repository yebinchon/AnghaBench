
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;
typedef int RIO ;


 scalar_t__ __plugin_open (int *,char const*,int ) ;
 int eprintf (char*) ;
 int free (char*) ;
 scalar_t__ gs ;
 int * r_io_desc_new (int *,int *,char const*,int,int,scalar_t__) ;
 int r_io_plugin_winedbg ;
 scalar_t__ r_socket_new (int ) ;
 int r_socket_spawn (scalar_t__,char*,int) ;
 char* r_str_newf (char*,char const*) ;
 char* runcmd (int *) ;

__attribute__((used)) static RIODesc *__open(RIO *io, const char *pathname, int rw, int mode) {
 if (__plugin_open (io, pathname, 0)) {
  if (gs) {
   return ((void*)0);
  }
  gs = r_socket_new (0);
  char *cmd = r_str_newf ("winedbg '%s'", pathname + 10);
  int res = r_socket_spawn (gs, cmd, 1000);
  free (cmd);
  if (!res) {
   return ((void*)0);
  }
  char *reply = runcmd (((void*)0));
  if (reply) {
   int rw = 7;
   free (reply);
   eprintf ("Wine-dbg is ready to go!\n");
   return r_io_desc_new (io, &r_io_plugin_winedbg, pathname, rw, mode, gs);
  }
  eprintf ("Can't find the Wine-dbg prompt\n");
 }
 return ((void*)0);
}
