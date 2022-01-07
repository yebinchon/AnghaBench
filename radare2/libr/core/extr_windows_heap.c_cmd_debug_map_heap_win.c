
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int cmd_debug_map_heap_block_win (int *,char const*) ;
 int help_msg ;
 int init_func () ;
 int r_core_cmd_help (int *,int ) ;
 int w32_list_heaps (int *,char const) ;

__attribute__((used)) static int cmd_debug_map_heap_win(RCore *core, const char *input) {
 init_func ();
 switch (input[0]) {
 case '?':
  r_core_cmd_help (core, help_msg);
  break;
 case 'b':
  cmd_debug_map_heap_block_win (core, input + 1);
  break;
 default:
  w32_list_heaps (core, input[0]);
  break;
 }
 return 1;
}
