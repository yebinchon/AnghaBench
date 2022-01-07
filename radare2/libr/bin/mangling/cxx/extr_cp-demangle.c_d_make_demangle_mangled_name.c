
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_encoding (struct d_info*,int ) ;
 struct demangle_component* d_make_name (struct d_info*,char const*,int ) ;
 char d_peek_char (struct d_info*) ;
 char d_peek_next_char (struct d_info*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct demangle_component *
d_make_demangle_mangled_name (struct d_info *di, const char *s)
{
  if (d_peek_char (di) != '_' || d_peek_next_char (di) != 'Z')
    return d_make_name (di, s, strlen (s));
  d_advance (di, 2);
  return d_encoding (di, 0);
}
