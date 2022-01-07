
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;
typedef int RIO ;
typedef int R2Pipe ;


 scalar_t__ __check (int *,char const*,int ) ;
 int * r2pipe_open (char const*) ;
 int * r_io_desc_new (int *,int *,char const*,int,int,int *) ;
 int r_io_plugin_r2pipe ;

__attribute__((used)) static RIODesc *__open(RIO *io, const char *pathname, int rw, int mode) {
 R2Pipe *r2p = ((void*)0);
 if (__check (io, pathname, 0)) {
  r2p = r2pipe_open (pathname + 9);
 }
 return r2p? r_io_desc_new (io, &r_io_plugin_r2pipe,
  pathname, rw, mode, r2p): ((void*)0);
}
