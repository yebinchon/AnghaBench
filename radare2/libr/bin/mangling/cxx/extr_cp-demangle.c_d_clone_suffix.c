
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_CLONE ;
 scalar_t__ IS_DIGIT (char const) ;
 scalar_t__ IS_LOWER (char const) ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 struct demangle_component* d_make_name (struct d_info*,char const*,int) ;
 char* d_str (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_clone_suffix (struct d_info *di, struct demangle_component *encoding)
{
  const char *suffix = d_str (di);
  const char *pend = suffix;
  struct demangle_component *n;

  if (*pend == '.' && (IS_LOWER (pend[1]) || pend[1] == '_'))
    {
      pend += 2;
      while (IS_LOWER (*pend) || *pend == '_')
 ++pend;
    }
  while (*pend == '.' && IS_DIGIT (pend[1]))
    {
      pend += 2;
      while (IS_DIGIT (*pend))
 ++pend;
    }
  d_advance (di, pend - suffix);
  n = d_make_name (di, suffix, pend - suffix);
  return d_make_comp (di, DEMANGLE_COMPONENT_CLONE, encoding, n);
}
