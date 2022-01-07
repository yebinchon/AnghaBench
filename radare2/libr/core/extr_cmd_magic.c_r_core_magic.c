
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_5__ {scalar_t__ offset; int config; } ;
typedef TYPE_1__ RCore ;


 int magicdepth ;
 int r_config_get_i (int ,char*) ;
 int r_core_magic_at (TYPE_1__*,char const*,scalar_t__,int ,int,int,int*) ;
 int r_core_seek (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static void r_core_magic(RCore *core, const char *file, int v) {
 ut64 addr = core->offset;
 int hits = 0;
 magicdepth = r_config_get_i (core->config, "magic.depth");
 r_core_magic_at (core, file, addr, magicdepth, v, 0, &hits);
 if (addr != core->offset) {
  r_core_seek (core, addr, 1);
 }
}
