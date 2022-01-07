
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {int * io; } ;
typedef int RIODesc ;
typedef int RIO ;
typedef TYPE_1__ RCore ;


 int R_FREE (int *) ;
 int ST32_MAX ;
 int * calloc (int,int) ;
 int eprintf (char*) ;
 TYPE_1__* opencore (int *) ;
 scalar_t__ r_file_slurp (char const*,int*) ;
 int r_io_desc_close (int *) ;
 int * r_io_open (int *,char const*,int ,int ) ;
 scalar_t__ r_io_read_at (int *,int ,int *,int) ;
 int r_io_size (int *) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static ut8 *slurp(RCore **c, const char *file, int *sz) {
 RIODesc *d;
 RIO *io;
 if (c && file && strstr (file, "://")) {
  ut8 *data = ((void*)0);
  ut64 size;
  if (!*c) {
   *c = opencore (((void*)0));
  }
  if (!*c) {
   eprintf ("opencore failed\n");
   return ((void*)0);
  }
  io = (*c)->io;
  d = r_io_open (io, file, 0, 0);
  if (!d) {
   return ((void*)0);
  }
  size = r_io_size (io);
  if (size > 0 && size < ST32_MAX) {
   data = calloc (1, size);
   if (r_io_read_at (io, 0, data, size)) {
    if (sz) {
     *sz = size;
    }
   } else {
    eprintf ("slurp: read error\n");
    R_FREE (data);
   }
  } else {
   eprintf ("slurp: Invalid file size\n");
  }
  r_io_desc_close (d);
  return data;
 }
 return (ut8 *) r_file_slurp (file, sz);
}
