
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct vendor {scalar_t__ vendorid; char const* name; struct vendor* next; } ;


 size_t hashnum (scalar_t__) ;
 struct vendor** vendors ;

const char *names_vendor(u_int16_t vendorid)
{
 struct vendor *v;

 v = vendors[hashnum(vendorid)];
 for (; v; v = v->next)
  if (v->vendorid == vendorid)
   return v->name;
 return ((void*)0);
}
