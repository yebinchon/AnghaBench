
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int TSNode ;
typedef int RCore ;


 int R_LOG_DEBUG (char*,char*,char*) ;
 int core_cmd_tsr2cmd (int *,char*,int) ;
 int free (char*) ;
 char* r_core_cmd_str (int *,char*) ;
 char* r_str_newf (char*,int,char const*) ;
 int ts_node_end_byte (int ) ;
 int ts_node_named_child (int ,int ) ;
 int ts_node_start_byte (int ) ;

__attribute__((used)) static bool handle_ts_interpret_command(RCore *core, const char *cstr, TSNode node, bool log) {
 TSNode command = ts_node_named_child (node, 0);
 ut32 command_start = ts_node_start_byte (command);
 ut32 command_end = ts_node_end_byte (command);
 char *cmd_string = r_str_newf ("%.*s", command_end - command_start, cstr + command_start);
 char *str = r_core_cmd_str (core, cmd_string);
 R_LOG_DEBUG ("interpret_command cmd_string = '%s', result to interpret = '%s'\n", cmd_string, str);
 free (cmd_string);
 bool res = core_cmd_tsr2cmd (core, str, log);
 free (str);
 return res;
}
