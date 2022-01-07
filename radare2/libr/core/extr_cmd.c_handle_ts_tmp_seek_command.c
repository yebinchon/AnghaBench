
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
struct TYPE_5__ {int num; int offset; } ;
typedef int TSNode ;
typedef TYPE_1__ RCore ;


 int R_LOG_DEBUG (char*,char*) ;
 int free (char*) ;
 int handle_ts_command (TYPE_1__*,char const*,int ,int) ;
 int r_core_seek (TYPE_1__*,int ,int) ;
 int r_num_math (int ,char*) ;
 char* r_str_newf (char*,int,char const*) ;
 int ts_node_end_byte (int ) ;
 int ts_node_named_child (int ,int) ;
 int ts_node_start_byte (int ) ;

__attribute__((used)) static bool handle_ts_tmp_seek_command(RCore *core, const char *cstr, TSNode node, bool log) {
 TSNode command = ts_node_named_child (node, 0);
 TSNode offset = ts_node_named_child (node, 1);
 ut32 offset_start = ts_node_start_byte (offset);
 ut32 offset_end = ts_node_end_byte (offset);
 char *offset_string = r_str_newf ("%.*s", offset_end - offset_start, cstr + offset_start);
 ut64 orig_offset = core->offset;
 R_LOG_DEBUG ("tmp_seek command, command X on tmp_seek %s\n", offset_string);
 r_core_seek (core, r_num_math (core->num, offset_string), 1);
 bool res = handle_ts_command (core, cstr, command, log);
 r_core_seek (core, orig_offset, 1);
 free (offset_string);
 return res;
}
