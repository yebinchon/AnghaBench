
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
typedef TYPE_1__ RCore ;


 int R_ARRAY_SIZE (int *) ;
 int * fortunes ;
 int free (char*) ;
 char* getFortuneFile (TYPE_1__*,int ) ;
 scalar_t__ r_config_get (int ,char*) ;
 char* r_file_slurp_random_line_count (char*,int*) ;
 scalar_t__ strstr (char const*,int ) ;

__attribute__((used)) static char *getrandomline(RCore *core) {
 int i, lines = 0;
 const char *types = (char *)r_config_get (core->config, "cfg.fortunes.type");
 char *line = ((void*)0), *templine;
 for (i = 0; i < R_ARRAY_SIZE (fortunes); i++) {
  if (strstr (types, fortunes[i])) {
   char *file = getFortuneFile(core, fortunes[i]);
   templine = r_file_slurp_random_line_count (file, &lines);
   if (templine && *templine) {
    free (line);
    line = templine;
   }
   free (file);
  }
 }
 return line;
}
