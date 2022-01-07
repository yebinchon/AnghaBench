
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_8__ {int off; int Oxff; } ;
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int rbuf; } ;
typedef TYPE_1__ Rihex ;
typedef TYPE_2__ RIODesc ;
typedef TYPE_3__ RIO ;


 int memset (int *,int ,int) ;
 int r_buf_read_at (int ,int ,int *,int) ;

__attribute__((used)) static int __read(RIO *io, RIODesc *fd, ut8 *buf, int count) {
 if (!fd || !fd->data || (count <= 0)) {
  return -1;
 }
 Rihex *rih = fd->data;
 memset (buf, io->Oxff, count);
 return r_buf_read_at (rih->rbuf, io->off, buf, count);
}
