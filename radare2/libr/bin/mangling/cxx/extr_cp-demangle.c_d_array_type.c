
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_ARRAY_TYPE ;
 scalar_t__ IS_DIGIT (char) ;
 int cplus_demangle_type (struct d_info*) ;
 int d_advance (struct d_info*,int) ;
 int d_check_char (struct d_info*,char) ;
 struct demangle_component* d_expression (struct d_info*) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,int ) ;
 struct demangle_component* d_make_name (struct d_info*,char const*,int) ;
 char d_peek_char (struct d_info*) ;
 char const* d_str (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_array_type (struct d_info *di)
{
  char peek;
  struct demangle_component *dim;

  if (! d_check_char (di, 'A'))
    return ((void*)0);

  peek = d_peek_char (di);
  if (peek == '_')
    dim = ((void*)0);
  else if (IS_DIGIT (peek))
    {
      const char *s;

      s = d_str (di);
      do
 {
   d_advance (di, 1);
   peek = d_peek_char (di);
 }
      while (IS_DIGIT (peek));
      dim = d_make_name (di, s, d_str (di) - s);
      if (dim == ((void*)0))
 return ((void*)0);
    }
  else
    {
      dim = d_expression (di);
      if (dim == ((void*)0))
 return ((void*)0);
    }

  if (! d_check_char (di, '_'))
    return ((void*)0);

  return d_make_comp (di, DEMANGLE_COMPONENT_ARRAY_TYPE, dim,
        cplus_demangle_type (di));
}
