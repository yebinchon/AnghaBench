
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {struct property* prop; } ;
struct property {int type; struct property* next; int lineno; int file; struct symbol* sym; } ;
typedef enum prop_type { ____Placeholder_prop_type } prop_type ;


 int current_file ;
 int memset (struct property*,int ,int) ;
 struct property* xmalloc (int) ;
 int zconf_lineno () ;

struct property *prop_alloc(enum prop_type type, struct symbol *sym)
{
 struct property *prop;
 struct property **propp;

 prop = xmalloc(sizeof(*prop));
 memset(prop, 0, sizeof(*prop));
 prop->type = type;
 prop->sym = sym;
 prop->file = current_file;
 prop->lineno = zconf_lineno();


 if (sym) {
  for (propp = &sym->prop; *propp; propp = &(*propp)->next)
   ;
  *propp = prop;
 }

 return prop;
}
