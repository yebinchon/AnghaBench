
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_9__ {int M; int X; } ;
struct TYPE_8__ {int pc; } ;
struct TYPE_7__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int snesDisass (int,int,int ,TYPE_1__*,int const*,int) ;
 TYPE_3__* snesflags ;

__attribute__((used)) static int dis(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 int dlen = snesDisass (snesflags->M, snesflags->X, a->pc, op, buf, len);
 if (dlen < 0) {
  dlen = 0;
 }
 op->size = dlen;
 if (buf[0] == 0xc2) {
  if (buf[1] & 0x10) {
   snesflags->X = 0;
  }
  if (buf[1] & 0x20) {
   snesflags->M = 0;
  }
 } else if (buf[0] == 0xe2) {
  if (buf[1] & 0x10) {
   snesflags->X = 1;
  }
  if (buf[1] & 0x20) {
   snesflags->M = 1;
  }
 }
 return dlen;
}
