
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ret ;
typedef int orig ;
struct TYPE_5__ {int offset; int io; } ;
typedef TYPE_1__ RCore ;


 int cmd_write_fail (TYPE_1__*) ;
 int r_core_write_at (TYPE_1__*,int ,int const*,int) ;
 int r_io_read_at (int ,int ,int *,int) ;

__attribute__((used)) static void cmd_write_bits(RCore *core, int set, ut64 val) {
 ut64 ret, orig;

 r_io_read_at (core->io, core->offset, (ut8*)&orig, sizeof (orig));
 if (set) {
  ret = orig | val;
 } else {
  ret = orig & (~(val));
 }
 if (!r_core_write_at (core, core->offset, (const ut8*)&ret, sizeof (ret))) {
  cmd_write_fail (core);
 }
}
