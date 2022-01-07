
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (char**) ;
 char* pnstrdup (char const*,int) ;
 char* pstrdup (char const*) ;
 char* rindex (char const*,char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

void
llvm_split_symbol_name(const char *name, char **modname, char **funcname)
{
 *modname = ((void*)0);
 *funcname = ((void*)0);




 if (strncmp(name, "pgextern.", strlen("pgextern.")) == 0)
 {




  *funcname = rindex(name, '.');
  (*funcname)++;

  *modname = pnstrdup(name + strlen("pgextern."),
       *funcname - name - strlen("pgextern.") - 1);
  Assert(funcname);

  *funcname = pstrdup(*funcname);
 }
 else
 {
  *modname = ((void*)0);
  *funcname = pstrdup(name);
 }
}
