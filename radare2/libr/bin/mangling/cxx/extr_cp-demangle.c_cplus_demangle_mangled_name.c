
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int options; } ;


 int DMGL_PARAMS ;
 scalar_t__ IS_DIGIT (char) ;
 scalar_t__ IS_LOWER (char) ;
 int d_check_char (struct d_info*,char) ;
 struct demangle_component* d_clone_suffix (struct d_info*,struct demangle_component*) ;
 struct demangle_component* d_encoding (struct d_info*,int) ;
 char d_peek_char (struct d_info*) ;
 char d_peek_next_char (struct d_info*) ;

struct demangle_component *
cplus_demangle_mangled_name (struct d_info *di, int top_level)
{
  struct demangle_component *p;

  if (! d_check_char (di, '_')



      && top_level)
    return ((void*)0);
  if (! d_check_char (di, 'Z'))
    return ((void*)0);
  p = d_encoding (di, top_level);



  if (top_level && (di->options & DMGL_PARAMS) != 0)
    while (d_peek_char (di) == '.'
    && (IS_LOWER (d_peek_next_char (di))
        || d_peek_next_char (di) == '_'
        || IS_DIGIT (d_peek_next_char (di))))
      p = d_clone_suffix (di, p);

  return p;
}
