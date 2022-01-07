
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 char* __prompt (char const*,int *) ;
 int free (char*) ;
 int r_core_cmd0 (int *,char*) ;
 char* r_str_newf (char*,int,char*,char*,char*) ;
 int r_str_trim (char*) ;

__attribute__((used)) static void addVar(RCore *core, int ch, const char *msg) {
 char *src = __prompt (msg, ((void*)0));
 char *name = __prompt ("Variable Name: ", ((void*)0));
 char *type = __prompt ("Type of Variable (int32_t): ", ((void*)0));
 char *cmd = r_str_newf ("afv%c %s %s %s", ch, src, name, type);
 r_str_trim (cmd);
 r_core_cmd0 (core, cmd);
 free(cmd);
 free (src);
 free (name);
 free (type);
}
