
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef long long ut64 ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_6__ {int io; int (* read_at ) (int ,long long,int*,int) ;} ;
struct TYPE_7__ {int anal; TYPE_1__ iob; scalar_t__ arch; } ;
typedef TYPE_2__ RDebug ;
typedef TYPE_3__ RAnalOp ;


 int R_ANAL_OP_MASK_BASIC ;
 scalar_t__ R_ANAL_OP_TYPE_CALL ;
 scalar_t__ R_ANAL_OP_TYPE_UCALL ;
 long long UT64_MAX ;
 int r_anal_op (int ,TYPE_3__*,long long,int*,int,int ) ;
 int strcmp (scalar_t__,char*) ;
 int stub1 (int ,long long,int*,int) ;
 int stub2 (int ,long long,int*,int) ;

__attribute__((used)) static int iscallret(RDebug *dbg, ut64 addr) {
 ut8 buf[32];
 if (addr == 0LL || addr == UT64_MAX)
  return 0;



 if (dbg->arch && !strcmp (dbg->arch, "x86")) {
  (void)dbg->iob.read_at (dbg->iob.io, addr-5, buf, 5);
  if (buf[0] == 0xe8) {
   return 1;
  }
  if (buf[3] == 0xff
      && ((buf[4] & 0xf0) == 0xd0
          || ((buf[4] & 0xf0) == 0x10
              && (buf[4] & 0x06) != 0x04))) {
   return 1;
  }

 } else {
  RAnalOp op;
  (void) dbg->iob.read_at (dbg->iob.io, addr-8, buf, 8);
  (void) r_anal_op (dbg->anal, &op, addr-8, buf, 8, R_ANAL_OP_MASK_BASIC);
  if (op.type == R_ANAL_OP_TYPE_CALL || op.type == R_ANAL_OP_TYPE_UCALL) {
   return 1;
  }

  (void) r_anal_op (dbg->anal, &op, addr-4, buf, 4, R_ANAL_OP_MASK_BASIC);
  if (op.type == R_ANAL_OP_TYPE_CALL || op.type == R_ANAL_OP_TYPE_UCALL) {
   return 1;
  }
 }
 return 0;
}
