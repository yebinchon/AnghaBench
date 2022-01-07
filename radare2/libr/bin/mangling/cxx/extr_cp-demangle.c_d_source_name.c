
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {struct demangle_component* last_name; } ;


 struct demangle_component* d_identifier (struct d_info*,int) ;
 int d_number (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_source_name (struct d_info *di)
{
  int len;
  struct demangle_component *ret;

  len = d_number (di);
  if (len <= 0)
    return ((void*)0);
  ret = d_identifier (di, len);
  di->last_name = ret;
  return ret;
}
