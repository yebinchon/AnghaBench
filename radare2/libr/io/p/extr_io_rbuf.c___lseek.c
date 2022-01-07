
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;
typedef int RBuffer ;


 int r_buf_seek (int *,int ,int) ;

__attribute__((used)) static ut64 __lseek(RIO* io, RIODesc *fd, ut64 offset, int whence) {
 RBuffer *buf = fd->data;
 return r_buf_seek (buf, offset, whence);
}
