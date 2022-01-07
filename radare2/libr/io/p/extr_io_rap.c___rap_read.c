
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RSocket ;
typedef int RIODesc ;
typedef int RIO ;


 int * RIORAP_FD (int *) ;
 int RMT_MAX ;
 int RMT_READ ;
 int RMT_REPLY ;
 int eprintf (char*,int,int,...) ;
 int r_read_at_be32 (int*,int) ;
 int r_socket_flush (int *) ;
 int r_socket_read_block (int *,int*,int) ;
 int r_socket_write (int *,int*,int) ;
 int r_write_be32 (int*,int) ;

__attribute__((used)) static int __rap_read(RIO *io, RIODesc *fd, ut8 *buf, int count) {
 RSocket *s = RIORAP_FD (fd);
 int ret, i = (int)count;
 ut8 tmp[5];


 if (count > RMT_MAX) {
  count = RMT_MAX;
 }

 tmp[0] = RMT_READ;
 r_write_be32 (tmp + 1, count);
 (void)r_socket_write (s, tmp, 5);
 r_socket_flush (s);

 ret = r_socket_read_block (s, tmp, 5);
 if (ret != 5 || tmp[0] != (RMT_READ | RMT_REPLY)) {
  eprintf ("__rap_read: Unexpected rap read reply "
   "(%d=0x%02x) expected (%d=0x%02x)\n",
   ret, tmp[0], 2, (RMT_READ | RMT_REPLY));
  return -1;
 }
 i = r_read_at_be32 (tmp, 1);
 if (i > count) {
  eprintf ("__rap_read: Unexpected data size %d vs %d\n", i, count);
  return -1;
 }
 r_socket_read_block (s, buf, i);
 return count;
}
