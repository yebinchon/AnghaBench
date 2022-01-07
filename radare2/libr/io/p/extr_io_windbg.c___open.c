
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindCtx ;
typedef int RIODesc ;
typedef int RIO ;


 int __plugin_open (int *,char const*,int ) ;
 int eprintf (char*,...) ;
 void* iob_open (char const*) ;
 int iob_select (char*) ;
 int * r_io_desc_new (int *,int *,char const*,int,int,int *) ;
 int r_io_plugin_windbg ;
 int * windbg_ctx_new (void*) ;

__attribute__((used)) static RIODesc *__open(RIO *io, const char *file, int rw, int mode) {
 if (!__plugin_open (io, file, 0)) {
  return ((void*)0);
 }

 if (!iob_select ("pipe")) {
  eprintf("Could not initialize the IO backend\n");
  return ((void*)0);
 }

 void *io_ctx = iob_open (file + 9);
 if (!io_ctx) {
  eprintf ("Could not open the pipe\n");
  return ((void*)0);
 }
 eprintf ("Opened pipe %s with fd %p\n", file + 9, io_ctx);

 WindCtx *ctx = windbg_ctx_new (io_ctx);
 if (!ctx) {
  eprintf ("Failed to initialize windbg context\n");
  return ((void*)0);
 }
 return r_io_desc_new (io, &r_io_plugin_windbg, file, rw, mode, ctx);
}
