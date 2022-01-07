
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct subclass {int classid; int subclassid; char const* name; struct subclass* next; } ;


 size_t hashnum (int) ;
 struct subclass** subclasses ;

const char *names_subclass(u_int8_t classid, u_int8_t subclassid)
{
 struct subclass *s;

 s = subclasses[hashnum((classid << 8) | subclassid)];
 for (; s; s = s->next)
  if (s->classid == classid && s->subclassid == subclassid)
   return s->name;
 return ((void*)0);
}
