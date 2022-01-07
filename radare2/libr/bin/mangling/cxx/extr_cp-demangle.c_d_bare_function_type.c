
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_FUNCTION_TYPE ;
 struct demangle_component* cplus_demangle_type (struct d_info*) ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 struct demangle_component* d_parmlist (struct d_info*) ;
 char d_peek_char (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_bare_function_type (struct d_info *di, int has_return_type)
{
  struct demangle_component *return_type;
  struct demangle_component *tl;
  char peek;



  peek = d_peek_char (di);
  if (peek == 'J')
    {
      d_advance (di, 1);
      has_return_type = 1;
    }

  if (has_return_type)
    {
      return_type = cplus_demangle_type (di);
      if (return_type == ((void*)0))
 return ((void*)0);
    }
  else
    return_type = ((void*)0);

  tl = d_parmlist (di);
  if (tl == ((void*)0))
    return ((void*)0);

  return d_make_comp (di, DEMANGLE_COMPONENT_FUNCTION_TYPE,
        return_type, tl);
}
