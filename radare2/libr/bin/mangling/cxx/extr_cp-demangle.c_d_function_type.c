
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_bare_function_type (struct d_info*,int) ;
 int d_check_char (struct d_info*,char) ;
 char d_peek_char (struct d_info*) ;
 struct demangle_component* d_ref_qualifier (struct d_info*,struct demangle_component*) ;

__attribute__((used)) static struct demangle_component *
d_function_type (struct d_info *di)
{
  struct demangle_component *ret;

  if (! d_check_char (di, 'F'))
    return ((void*)0);
  if (d_peek_char (di) == 'Y')
    {


      d_advance (di, 1);
    }
  ret = d_bare_function_type (di, 1);
  ret = d_ref_qualifier (di, ret);

  if (! d_check_char (di, 'E'))
    return ((void*)0);
  return ret;
}
