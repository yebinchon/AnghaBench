
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct class {scalar_t__ classid; char const* name; struct class* next; } ;


 struct class** classes ;
 size_t hashnum (scalar_t__) ;

const char *names_class(u_int8_t classid)
{
 struct class *c;

 c = classes[hashnum(classid)];
 for (; c; c = c->next)
  if (c->classid == classid)
   return c->name;
 return ((void*)0);
}
