
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {struct demangle_component* last_name; } ;


 int DEMANGLE_COMPONENT_TAGGED_NAME ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 char d_peek_char (struct d_info*) ;
 struct demangle_component* d_source_name (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_abi_tags (struct d_info *di, struct demangle_component *dc)
{
  struct demangle_component *hold_last_name;
  char peek;


  hold_last_name = di->last_name;

  while (peek = d_peek_char (di),
  peek == 'B')
    {
      struct demangle_component *tag;
      d_advance (di, 1);
      tag = d_source_name (di);
      dc = d_make_comp (di, DEMANGLE_COMPONENT_TAGGED_NAME, dc, tag);
    }

  di->last_name = hold_last_name;

  return dc;
}
