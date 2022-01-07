
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {int off; } ;
struct TYPE_5__ {int * data; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ RIO ;
typedef int RBuffer ;


 int ar_read_at (int *,int ,int *,int) ;

__attribute__((used)) static int r_io_ar_read(RIO *io, RIODesc *fd, ut8 *buf, int count) {
 RBuffer *b;
 if (!fd || !fd->data || !buf) {
  return -1;
 }
 b = fd->data;
 return ar_read_at (b, io->off, buf, count);
}
