
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_PTRMEM_TYPE ;
 struct demangle_component* cplus_demangle_type (struct d_info*) ;
 int d_check_char (struct d_info*,char) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;

__attribute__((used)) static struct demangle_component *
d_pointer_to_member_type (struct d_info *di)
{
  struct demangle_component *cl;
  struct demangle_component *mem;

  if (! d_check_char (di, 'M'))
    return ((void*)0);

  cl = cplus_demangle_type (di);
  if (cl == ((void*)0))
    return ((void*)0);
  mem = cplus_demangle_type (di);
  if (mem == ((void*)0))
    return ((void*)0);

  return d_make_comp (di, DEMANGLE_COMPONENT_PTRMEM_TYPE, cl, mem);
}
