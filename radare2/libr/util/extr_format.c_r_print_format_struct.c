
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int namefmt ;
struct TYPE_5__ {int (* cb_printf ) (char*,char const*) ;int sdb_types; int formats; } ;
typedef TYPE_1__ RPrint ;


 scalar_t__ MUSTSEE ;
 int NESTDEPTH ;
 int SEEVALUE ;
 int STRUCTFLAG ;
 int STRUCTPTR ;
 int eprintf (char*,...) ;
 int r_print_format (TYPE_1__*,int ,int const*,int,char const*,int,char const*,char*) ;
 int r_print_format_struct_size (TYPE_1__*,char const*,int,int ) ;
 char* r_type_format (int ,char const*) ;
 char* sdb_get (int ,char const*,int *) ;
 int snprintf (char*,int,char*,int) ;
 int stub1 (char*,char*) ;
 int stub2 (char*,char*) ;
 int stub3 (char*,char const*) ;

__attribute__((used)) static int r_print_format_struct(RPrint* p, ut64 seek, const ut8* b, int len, const char *name,
  int slide, int mode, const char *setval, char *field, int anon) {
 const char *fmt;
 char namefmt[128];
 slide++;
 if ((slide % STRUCTPTR) > NESTDEPTH || (slide % STRUCTFLAG)/STRUCTPTR > NESTDEPTH) {
  eprintf ("Too much nested struct, recursion too deep...\n");
  return 0;
 }
 if (anon) {
  fmt = name;
 } else {
  fmt = sdb_get (p->formats, name, ((void*)0));
  if (!fmt) {
   fmt = r_type_format (p->sdb_types, name);
  }
 }
 if (!fmt || !*fmt) {
  eprintf ("Undefined struct '%s'.\n", name);
  return 0;
 }
 if (MUSTSEE && !SEEVALUE) {
  snprintf (namefmt, sizeof (namefmt), "%%%ds", 10+6*slide%STRUCTPTR);
  if (fmt[0] == '0') {
   p->cb_printf (namefmt, "union");
  } else {
   p->cb_printf (namefmt, "struct");
  }
  p->cb_printf ("<%s>\n", name);
 }
 r_print_format (p, seek, b, len, fmt, mode, setval, field);
 return r_print_format_struct_size (p, fmt, mode, 0);
}
