
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int expansion; } ;
typedef enum demangle_component_type { ____Placeholder_demangle_component_type } demangle_component_type ;


 int DEMANGLE_COMPONENT_REFERENCE_THIS ;
 int DEMANGLE_COMPONENT_RVALUE_REFERENCE_THIS ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_make_comp (struct d_info*,int,struct demangle_component*,int *) ;
 char d_peek_char (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_ref_qualifier (struct d_info *di, struct demangle_component *sub)
{
  struct demangle_component *ret = sub;
  char peek;

  peek = d_peek_char (di);
  if (peek == 'R' || peek == 'O')
    {
      enum demangle_component_type t;
      if (peek == 'R')
 {
   t = DEMANGLE_COMPONENT_REFERENCE_THIS;
   di->expansion += sizeof "&";
 }
      else
 {
   t = DEMANGLE_COMPONENT_RVALUE_REFERENCE_THIS;
   di->expansion += sizeof "&&";
 }
      d_advance (di, 1);

      ret = d_make_comp (di, t, ret, ((void*)0));
    }

  return ret;
}
