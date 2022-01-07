
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int buf ;
typedef int Sdb ;
typedef int RBuffer ;
typedef int RBinFile ;
typedef int N64Header ;


 scalar_t__ check_buffer (int *) ;
 void* memcpy (int *,int *,int) ;
 int n64_header ;
 int r_buf_read_at (int *,int ,int *,int) ;

__attribute__((used)) static bool load_buffer(RBinFile *bf, void **bin_obj, RBuffer *b, ut64 loadaddr, Sdb *sdb) {
 if (check_buffer (b)) {
  ut8 buf[sizeof (N64Header)] = {0};
  r_buf_read_at (b, 0, buf, sizeof (buf));
  *bin_obj = memcpy (&n64_header, buf, sizeof (N64Header));
  return 1;
 }
 return 0;
}
