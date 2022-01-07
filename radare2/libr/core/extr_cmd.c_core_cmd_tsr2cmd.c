
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TSTree ;
typedef int TSParser ;
typedef int TSNode ;
typedef int RCore ;


 int eprintf (char*,char const*) ;
 int handle_ts_commands (int *,char const*,int ,int) ;
 scalar_t__ is_ts_commands (int ) ;
 int strlen (char const*) ;
 int tree_sitter_r2cmd () ;
 int ts_node_has_error (int ) ;
 int ts_parser_delete (int *) ;
 int * ts_parser_new () ;
 int * ts_parser_parse_string (int *,int *,char const*,int ) ;
 int ts_parser_set_language (int *,int ) ;
 int ts_tree_delete (int *) ;
 int ts_tree_root_node (int *) ;

__attribute__((used)) static bool core_cmd_tsr2cmd(RCore *core, const char *cstr, bool log) {
 TSParser *parser = ts_parser_new ();

 ts_parser_set_language (parser, tree_sitter_r2cmd ());

 TSTree *tree = ts_parser_parse_string (parser, ((void*)0), cstr, strlen (cstr));
 TSNode root = ts_tree_root_node (tree);
 bool res = 0;
 if (is_ts_commands (root) && !ts_node_has_error (root)) {
  res = handle_ts_commands (core, cstr, root, log);
 } else {
  eprintf ("Error while parsing command: `%s`\n", cstr);
 }

 ts_tree_delete (tree);
 ts_parser_delete (parser);
 return res;
}
