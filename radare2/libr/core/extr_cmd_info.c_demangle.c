
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
typedef TYPE_1__ RCore ;


 int demangle_internal (TYPE_1__*,char const*,char const*) ;
 int free (char*) ;
 char* r_config_get (int ,char*) ;
 int r_return_val_if_fail (int,int) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static bool demangle(RCore *core, const char *s) {
 r_return_val_if_fail (core && s, 0);
 const char *ss = strchr (s, ' ');
 if (!*s) {
  return 0;
 }
 if (!ss) {
  const char *lang = r_config_get (core->config, "bin.lang");
  demangle_internal (core, lang, s);
  return 1;
 }
 char *p = strdup (s);
 char *q = p + (ss - s);
 *q = 0;
 demangle_internal (core, p, q + 1);
 free (p);
 return 1;
}
