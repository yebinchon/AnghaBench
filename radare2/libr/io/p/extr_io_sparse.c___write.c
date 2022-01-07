
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_5__ {int data; } ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;
typedef int RBuffer ;


 int * RIOSPARSE_BUF (TYPE_1__*) ;
 int RIOSPARSE_OFF (TYPE_1__*) ;
 int r_buf_write_at (int *,int ,int const*,int) ;

__attribute__((used)) static int __write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 ut64 o;
 RBuffer *b;
 if (!fd || !fd->data) {
  return -1;
 }
 b = RIOSPARSE_BUF(fd);
 o = RIOSPARSE_OFF(fd);
 return r_buf_write_at (b, o, buf, count);
}
