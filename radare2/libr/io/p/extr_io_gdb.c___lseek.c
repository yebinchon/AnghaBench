
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int off; } ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;





 int UT64_MAX ;

__attribute__((used)) static ut64 __lseek(RIO *io, RIODesc *fd, ut64 offset, int whence) {
 switch (whence) {
 case 128:
  io->off = offset;
  break;
 case 130:
  io->off += offset;
  break;
 case 129:
  io->off = UT64_MAX;
 }
 return io->off;
}
