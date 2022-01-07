
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {scalar_t__ type; int name; } ;
typedef int FILE ;


 char* CONFIG_ ;
 scalar_t__ S_TRISTATE ;
 int fprintf (int *,char*,char*,int,char) ;
 scalar_t__ toupper (char const) ;

__attribute__((used)) static void
tristate_print_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
{

 if (sym->type == S_TRISTATE && *value != 'n')
  fprintf(fp, "%s%s=%c\n", CONFIG_, sym->name, (char)toupper(*value));
}
