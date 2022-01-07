
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int config; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int r_config_bump (int ,char*) ;
 int r_config_get_i (int ,char*) ;
 int r_core_lines_initcache (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void __init_seek_line(RCore *core) {
 ut64 from, to;

 r_config_bump (core->config, "lines.to");
 from = r_config_get_i (core->config, "lines.from");
 to = r_config_get_i (core->config, "lines.to");
 if (r_core_lines_initcache (core, from, to) == -1) {
  eprintf ("ERROR: \"lines.from\" and \"lines.to\" must be set\n");
 }
}
