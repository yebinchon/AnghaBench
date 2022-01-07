
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int free (char*) ;
 char* getViewerPath () ;
 char* r_config_get (int ,char*) ;
 char* r_file_path (char const*) ;
 char* r_str_new (char*) ;
 char* r_str_newf (char*,char*,char const*,char const*,char const*,...) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static char* graph_cmd(RCore *core, char *r2_cmd, const char *save_path) {
 const char *dot = "dot";
 char *cmd = ((void*)0);
 const char *ext = r_config_get (core->config, "graph.gv.format");
 char *dotPath = r_file_path (dot);
 if (!strcmp (dotPath, dot)) {
  free (dotPath);
  dot = "xdot";
  dotPath = r_file_path (dot);
  if (!strcmp (dotPath, dot)) {
   free (dotPath);
   return r_str_new ("agf");
  }
 }
 if (save_path && *save_path) {
  cmd = r_str_newf ("%s > a.dot;!%s -T%s -o%s a.dot;",
   r2_cmd, dot, ext, save_path);
 } else {
  char *viewer = getViewerPath();
  if (viewer) {
   cmd = r_str_newf ("%s > a.dot;!%s -T%s -oa.%s a.dot;!%s a.%s",
    r2_cmd, dot, ext, ext, viewer, ext);
   free (viewer);
  } else {
   eprintf ("Cannot find a valid picture viewer\n");
  }
 }
 free (dotPath);
 return cmd;
}
