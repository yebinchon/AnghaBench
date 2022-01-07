
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* assembler; int config; } ;
struct TYPE_9__ {int bits; } ;
typedef TYPE_2__ RCore ;


 int cmd_dbg_map_heap_glibc_32 (TYPE_2__*,char const*) ;
 int cmd_dbg_map_heap_glibc_64 (TYPE_2__*,char const*) ;
 int cmd_dbg_map_jemalloc_32 (TYPE_2__*,char const*) ;
 int cmd_dbg_map_jemalloc_64 (TYPE_2__*,char const*) ;
 int cmd_debug_map_heap_win (TYPE_2__*,char const*) ;
 int eprintf (char*) ;
 char* r_config_get (int ,char*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int r_debug_heap(RCore *core, const char *input) {
 const char *m = r_config_get (core->config, "dbg.malloc");
 if (m && !strcmp ("glibc", m)) {







  eprintf ("glibc not supported for this platform\n");
 } else {



  eprintf ("MALLOC algorithm not supported\n");
  return 0;

 }
 return 1;
}
