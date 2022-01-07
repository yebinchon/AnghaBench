
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

__attribute__((used)) static bool is_x86_ret(RDebug *dbg, ut64 addr) {
 ut8 buf[1];
 (void)dbg->iob.read_at (dbg->iob.io, addr, buf, R_ARRAY_SIZE (buf));
 switch (buf[0]) {
 case 0xc3:
 case 0xcb:
 case 0xc2:
 case 0xca:
  return 1;
 default:
  return 0;
 }

}
