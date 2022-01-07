
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_3__ {int off; } ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;


 int debug_qnx_read_at (int *,int,int ) ;
 int desc ;
 int memset (int *,int,int) ;

__attribute__((used)) static int __read (RIO *io, RIODesc *fd, ut8 *buf, int count) {
 memset (buf, 0xff, count);
 ut64 addr = io->off;
 if (!desc) {
  return -1;
 }
 return debug_qnx_read_at (buf, count, addr);
}
