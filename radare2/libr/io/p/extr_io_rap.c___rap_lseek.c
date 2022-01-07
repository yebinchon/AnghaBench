
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RSocket ;
typedef int RIODesc ;
typedef int RIO ;


 int * RIORAP_FD (int *) ;
 int RMT_REPLY ;
 int RMT_SEEK ;
 int eprintf (char*,...) ;
 int r_read_at_be64 (int*,int) ;
 int r_socket_flush (int *) ;
 int r_socket_read_block (int *,int*,int) ;
 int r_socket_write (int *,int**,int) ;
 int r_write_be64 (int*,int) ;

__attribute__((used)) static ut64 __rap_lseek(RIO *io, RIODesc *fd, ut64 offset, int whence) {
 RSocket *s = RIORAP_FD (fd);
 ut8 tmp[10];
 tmp[0] = RMT_SEEK;
 tmp[1] = (ut8)whence;
 r_write_be64 (tmp + 2, offset);
 (void)r_socket_write (s, &tmp, 10);
 r_socket_flush (s);
 int ret = r_socket_read_block (s, (ut8*)&tmp, 9);
 if (ret != 9) {
  eprintf ("Truncated socket read\n");
  return -1;
 }
 if (tmp[0] != (RMT_SEEK | RMT_REPLY)) {


  eprintf ("Unexpected lseek reply (%02x -> %02x)\n", tmp[0], (RMT_SEEK | RMT_REPLY));
  return -1;
 }
 return r_read_at_be64 (tmp, 1);
}
