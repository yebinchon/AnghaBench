
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer ;
 int read_obj (char const*) ;
 char* strdup (char*) ;
 unsigned long strtoul (int ,char**,int) ;

__attribute__((used)) static unsigned long get_obj_and_str(const char *name, char **x)
{
 unsigned long result = 0;
 char *p;

 *x = ((void*)0);

 if (!read_obj(name)) {
  x = ((void*)0);
  return 0;
 }
 result = strtoul(buffer, &p, 10);
 while (*p == ' ')
  p++;
 if (*p)
  *x = strdup(p);
 return result;
}
