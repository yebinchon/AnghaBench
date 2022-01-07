
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int TSNode ;
typedef int RCore ;


 int R_LOG_DEBUG (char*,int) ;
 int eprintf (char*,char const*) ;
 int handle_ts_command (int *,char const*,int ,int) ;
 int ts_node_named_child (int ,int) ;
 int ts_node_named_child_count (int ) ;

__attribute__((used)) static bool handle_ts_commands(RCore *core, const char *cstr, TSNode node, bool log) {
 ut32 child_count = ts_node_named_child_count (node);
 bool res = 1;
 int i;

 R_LOG_DEBUG ("commands with %d childs\n", child_count);
 for (i = 0; i < child_count; ++i) {
  TSNode command = ts_node_named_child (node, i);
  res &= handle_ts_command (core, cstr, command, log);
  if (!res) {
   eprintf ("Error while parsing command: %s\n", cstr);
   return 0;
  }
 }
 return res;
}
