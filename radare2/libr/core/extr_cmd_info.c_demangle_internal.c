
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int demanglercmd; int cur; } ;
struct TYPE_5__ {TYPE_2__* bin; } ;
typedef TYPE_1__ RCore ;
 int free (char*) ;
 char* r_bin_demangle_cxx (int ,char const*,int ) ;
 char* r_bin_demangle_java (char const*) ;
 int r_bin_demangle_list (TYPE_2__*) ;
 char* r_bin_demangle_msvc (char const*) ;
 char* r_bin_demangle_objc (int *,char const*) ;
 char* r_bin_demangle_plugin (TYPE_2__*,char*,char const*) ;
 char* r_bin_demangle_swift (char const*,int ) ;
 int r_bin_demangle_type (char const*) ;
 int r_cons_printf (char*,char*) ;

__attribute__((used)) static bool demangle_internal(RCore *core, const char *lang, const char *s) {
 char *res = ((void*)0);
 int type = r_bin_demangle_type (lang);
 switch (type) {
 case 133: res = r_bin_demangle_cxx (core->bin->cur, s, 0); break;
 case 131: res = r_bin_demangle_java (s); break;
 case 129: res = r_bin_demangle_objc (((void*)0), s); break;
 case 128: res = r_bin_demangle_swift (s, core->bin->demanglercmd); break;
 case 132: res = r_bin_demangle_plugin (core->bin, "dlang", s); break;
 case 130: res = r_bin_demangle_msvc (s); break;
 default:
  r_bin_demangle_list (core->bin);
  return 1;
 }
 if (res) {
  if (*res) {
   r_cons_printf ("%s\n", res);
  }
  free (res);
  return 0;
 }
 return 1;
}
