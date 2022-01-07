
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int type; int flags; int name; TYPE_1__* def; } ;
struct TYPE_2__ {int val; int tri; } ;



 int S_DEF_AUTO ;





 int conf_warning (char*,...) ;
 int isspace (char) ;
 int memmove (char*,char*,int ) ;
 int mod ;
 int no ;
 int strdup (char*) ;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;
 int sym_string_valid (struct symbol*,char*) ;
 int yes ;

__attribute__((used)) static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
{
 char *p2;

 switch (sym->type) {
 case 128:
  if (p[0] == 'm') {
   sym->def[def].tri = mod;
   sym->flags |= def_flags;
   break;
  }

 case 133:
  if (p[0] == 'y') {
   sym->def[def].tri = yes;
   sym->flags |= def_flags;
   break;
  }
  if (p[0] == 'n') {
   sym->def[def].tri = no;
   sym->flags |= def_flags;
   break;
  }
  if (def != S_DEF_AUTO)
   conf_warning("symbol value '%s' invalid for %s",
         p, sym->name);
  return 1;
 case 130:
  if (*p != '"') {
   for (p2 = p; *p2 && !isspace(*p2); p2++)
    ;
   sym->type = 129;
   goto done;
  }

 case 129:
  if (*p++ != '"')
   break;
  for (p2 = p; (p2 = strpbrk(p2, "\"\\")); p2++) {
   if (*p2 == '"') {
    *p2 = 0;
    break;
   }
   memmove(p2, p2 + 1, strlen(p2));
  }
  if (!p2) {
   if (def != S_DEF_AUTO)
    conf_warning("invalid string found");
   return 1;
  }

 case 131:
 case 132:
 done:
  if (sym_string_valid(sym, p)) {
   sym->def[def].val = strdup(p);
   sym->flags |= def_flags;
  } else {
   if (def != S_DEF_AUTO)
    conf_warning("symbol value '%s' invalid for %s",
          p, sym->name);
   return 1;
  }
  break;
 default:
  ;
 }
 return 0;
}
