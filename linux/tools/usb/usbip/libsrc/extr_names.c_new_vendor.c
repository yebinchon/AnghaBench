
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct vendor {scalar_t__ vendorid; struct vendor* next; int name; } ;


 unsigned int hashnum (scalar_t__) ;
 struct vendor* my_malloc (scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 struct vendor** vendors ;

__attribute__((used)) static int new_vendor(const char *name, u_int16_t vendorid)
{
 struct vendor *v;
 unsigned int h = hashnum(vendorid);

 v = vendors[h];
 for (; v; v = v->next)
  if (v->vendorid == vendorid)
   return -1;
 v = my_malloc(sizeof(struct vendor) + strlen(name));
 if (!v)
  return -1;
 strcpy(v->name, name);
 v->vendorid = vendorid;
 v->next = vendors[h];
 vendors[h] = v;
 return 0;
}
