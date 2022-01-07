
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_VECTOR_TYPE ;
 int cplus_demangle_type (struct d_info*) ;
 int d_advance (struct d_info*,int) ;
 int d_check_char (struct d_info*,char) ;
 struct demangle_component* d_expression (struct d_info*) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,int ) ;
 struct demangle_component* d_number_component (struct d_info*) ;
 char d_peek_char (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_vector_type (struct d_info *di)
{
  char peek;
  struct demangle_component *dim;

  peek = d_peek_char (di);
  if (peek == '_')
    {
      d_advance (di, 1);
      dim = d_expression (di);
    }
  else
    dim = d_number_component (di);

  if (dim == ((void*)0))
    return ((void*)0);

  if (! d_check_char (di, '_'))
    return ((void*)0);

  return d_make_comp (di, DEMANGLE_COMPONENT_VECTOR_TYPE, dim,
        cplus_demangle_type (di));
}
