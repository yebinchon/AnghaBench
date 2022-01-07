
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {int io; int (* read_at ) (int ,int ,int*,int ) ;} ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef TYPE_2__ RDebug ;


 int R_ARRAY_SIZE (int*) ;
 int stub1 (int ,int ,int*,int ) ;

__attribute__((used)) static bool is_x86_call(RDebug *dbg, ut64 addr) {
 ut8 buf[3];
 ut8 *op = buf;
 (void)dbg->iob.read_at (dbg->iob.io, addr, buf, R_ARRAY_SIZE (buf));
 switch (buf[0]) {
 case 0x65:
 case 0x64:
 case 0x26:
 case 0x3e:
 case 0x36:
 case 0x2e:
  op++;
 }
 if (op[0] == 0xe8) {
  return 1;
 }
 if (op[0] == 0xff
     && (op[1] & 0x30) == 0x10) {
  return 1;
 }

 return 0;
}
