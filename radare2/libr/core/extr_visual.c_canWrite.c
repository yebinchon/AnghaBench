
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int io; int config; } ;
struct TYPE_5__ {int perm; } ;
typedef TYPE_1__ RIOMap ;
typedef TYPE_2__ RCore ;


 int R_PERM_W ;
 scalar_t__ r_config_get_i (int ,char*) ;
 TYPE_1__* r_io_map_get (int ,int ) ;

__attribute__((used)) static bool canWrite(RCore *core, ut64 addr) {
 if (r_config_get_i (core->config, "io.cache")) {
  return 1;
 }
 RIOMap *map = r_io_map_get (core->io, addr);
 return (map && (map->perm & R_PERM_W));
}
