
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


 int debug_qnx_write_at (int const*,int,int ) ;
 int desc ;

__attribute__((used)) static int __write (RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 ut64 addr = io->off;
 if (!desc) {
  return -1;
 }
 return debug_qnx_write_at (buf, count, addr);
}
