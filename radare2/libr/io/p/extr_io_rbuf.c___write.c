
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;
typedef int RBuffer ;


 int r_buf_write (int *,int const*,int) ;

__attribute__((used)) static int __write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 if (!fd || !buf || count < 0 || !fd->data) {
  return -1;
 }
 RBuffer *b = fd->data;
 return r_buf_write (b, buf, count);
}
