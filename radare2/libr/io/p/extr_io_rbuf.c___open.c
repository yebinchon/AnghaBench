
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;
typedef int RIO ;
typedef int RBuffer ;


 int r_buf_free (int *) ;
 int * r_buf_new () ;
 int * r_io_desc_new (int *,int *,char const*,int,int ,int *) ;
 int r_io_plugin_rbuf ;

__attribute__((used)) static RIODesc *__open(RIO *io, const char *pathname, int rw, int mode) {
 RIODesc *desc;
 RBuffer *buf = r_buf_new ();
 if (buf && (desc = r_io_desc_new (io, &r_io_plugin_rbuf, pathname, 7, 0, buf))) {
  return desc;
 }
 r_buf_free (buf);
 return ((void*)0);
}
