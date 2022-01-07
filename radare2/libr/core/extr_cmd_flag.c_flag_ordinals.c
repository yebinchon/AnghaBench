
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rename_flag_t {char* pfx; int count; TYPE_1__* core; } ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ RCore ;


 int free (char*) ;
 int r_flag_foreach_glob (int ,char const*,int ,struct rename_flag_t*) ;
 char* r_str_trim_ro (char const*) ;
 int rename_flag_ordinal ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void flag_ordinals(RCore *core, const char *str) {
 const char *glob = r_str_trim_ro (str);
 char *pfx = strdup (glob);
 char *p = strchr (pfx, '*');
 if (p) {
  *p = 0;
 }

 struct rename_flag_t u = { .core = core, .pfx = pfx, .count = 0 };
 r_flag_foreach_glob (core->flags, glob, rename_flag_ordinal, &u);
 free (pfx);
}
