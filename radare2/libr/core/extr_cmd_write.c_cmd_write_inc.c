
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int ut16 ;
typedef int st64 ;
struct TYPE_5__ {scalar_t__ block; int offset; } ;
typedef TYPE_1__ RCore ;


 int cmd_write_fail (TYPE_1__*) ;
 int r_core_write_at (TYPE_1__*,int ,scalar_t__,int) ;

__attribute__((used)) static void cmd_write_inc(RCore *core, int size, st64 num) {
 ut64 *v64;
 ut32 *v32;
 ut16 *v16;
 ut8 *v8;
 switch (size) {
 case 1: v8 = (ut8*)core->block; *v8 += num; break;
 case 2: v16 = (ut16*)core->block; *v16 += num; break;
 case 4: v32 = (ut32*)core->block; *v32 += num; break;
 case 8: v64 = (ut64*)core->block; *v64 += num; break;
 }

 if (!r_core_write_at (core, core->offset, core->block, size)) {
  cmd_write_fail (core);
 }
}
