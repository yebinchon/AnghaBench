
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;


 int free (char*) ;
 int r_config_set (int ,char*,char*) ;
 int r_file_dump (char*,int const*,int,int) ;
 char* r_file_temp (char*) ;
 int r_str_replace_char (char*,char,char) ;
 char* strdup (char const*) ;
 int strlen (char*) ;

__attribute__((used)) static void setRarunProfileString(RCore *core, const char *str) {
 char *file = r_file_temp ("rarun2");
 char *s = strdup (str);
 r_config_set (core->config, "dbg.profile", file);
 r_str_replace_char (s, ',', '\n');
 r_file_dump (file, (const ut8*)s, strlen (s), 0);
 r_file_dump (file, (const ut8*)"\n", 1, 1);
 free (file);
}
