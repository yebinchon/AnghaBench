
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
 int RMT_WRITE ;
 int eprintf (char*) ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int const*,int) ;
 int r_read_be32 (int *) ;
 int r_socket_flush (int *) ;
 int r_socket_read (int *,int *,int) ;
 int r_socket_write (int *,int *,int) ;
 int r_write_be32 (int *,int) ;

__attribute__((used)) static int __rap_write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 RSocket *s = RIORAP_FD (fd);
 ut8 *tmp;
 int ret;

 if (count < 1) {
  return count;
 }

 if (count > RMT_MAX) {
  count = RMT_MAX;
 }
 if (!(tmp = (ut8 *)malloc (count + 5))) {
  eprintf ("__rap_write: malloc failed\n");
  return -1;
 }
 tmp[0] = RMT_WRITE;
 r_write_be32 (tmp + 1, count);
 memcpy (tmp + 5, buf, count);

 (void)r_socket_write (s, tmp, count + 5);
 r_socket_flush (s);
 if (r_socket_read (s, tmp, 5) != 5) {
  eprintf ("__rap_write: error\n");
  ret = -1;
 } else {
  ret = r_read_be32 (tmp + 1);
  if (!ret) {
   ret = -1;
  }
 }
 free (tmp);
 return ret;
}
