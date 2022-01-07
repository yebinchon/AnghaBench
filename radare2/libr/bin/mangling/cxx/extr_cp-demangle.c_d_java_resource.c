
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int DEMANGLE_COMPONENT_COMPOUND_NAME ;
 int DEMANGLE_COMPONENT_JAVA_RESOURCE ;
 int d_advance (struct d_info*,int) ;
 struct demangle_component* d_make_character (struct d_info*,char) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 struct demangle_component* d_make_name (struct d_info*,char const*,int) ;
 char d_next_char (struct d_info*) ;
 int d_number (struct d_info*) ;
 char* d_str (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_java_resource (struct d_info *di)
{
  struct demangle_component *p = ((void*)0);
  struct demangle_component *next = ((void*)0);
  int len, i;
  char c;
  const char *str;

  len = d_number (di);
  if (len <= 1)
    return ((void*)0);


  if (d_next_char (di) != '_')
    return ((void*)0);
  len--;

  str = d_str (di);
  i = 0;

  while (len > 0)
    {
      c = str[i];
      if (!c)
 return ((void*)0);


      if (c == '$')
 {
   i++;
   switch (str[i++])
     {
     case 'S':
       c = '/';
       break;
     case '_':
       c = '.';
       break;
     case '$':
       c = '$';
       break;
     default:
       return ((void*)0);
     }
   next = d_make_character (di, c);
   d_advance (di, i);
   str = d_str (di);
   len -= i;
   i = 0;
   if (next == ((void*)0))
     return ((void*)0);
 }

      else
 {
   while (i < len && str[i] && str[i] != '$')
     i++;

   next = d_make_name (di, str, i);
   d_advance (di, i);
   str = d_str (di);
   len -= i;
   i = 0;
   if (next == ((void*)0))
     return ((void*)0);
 }

      if (p == ((void*)0))
 p = next;
      else
 {
   p = d_make_comp (di, DEMANGLE_COMPONENT_COMPOUND_NAME, p, next);
   if (p == ((void*)0))
     return ((void*)0);
 }
    }

  p = d_make_comp (di, DEMANGLE_COMPONENT_JAVA_RESOURCE, p, ((void*)0));

  return p;
}
