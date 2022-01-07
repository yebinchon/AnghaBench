
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TSNode ;
typedef int RCore ;


 int handle_ts_arged_command (int *,char const*,int ) ;
 int handle_ts_interpret_command (int *,char const*,int ,int) ;
 int handle_ts_tmp_seek_command (int *,char const*,int ,int) ;
 scalar_t__ is_ts_arged_command (int ) ;
 scalar_t__ is_ts_interpret_command (int ) ;
 scalar_t__ is_ts_tmp_seek_command (int ) ;
 int r_line_hist_add (char const*) ;
 int run_pending_anal (int *) ;

__attribute__((used)) static bool handle_ts_command(RCore *core, const char *cstr, TSNode node, bool log) {
 bool ret = 0;

 if (log) {
  r_line_hist_add (cstr);
 }
 if (is_ts_arged_command (node)) {
  ret = handle_ts_arged_command (core, cstr, node);
 } else if (is_ts_tmp_seek_command (node)) {
  ret = handle_ts_tmp_seek_command (core, cstr, node, log);
 } else if (is_ts_interpret_command (node)) {
  ret = handle_ts_interpret_command (core, cstr, node, log);
 }

 run_pending_anal (core);
 return ret;
}
