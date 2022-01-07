
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int addr; } ;
typedef TYPE_1__ RAnalOp ;



__attribute__((used)) static ut64 disarm_12bit_offset (RAnalOp *op, unsigned int insoff) {
 ut64 off = insoff;

 if ((off & 0x0800) == 0x0800)
 {
  off |= ~0xFFF;
 }
 return (op->addr) + (off << 1) + 4;
}
