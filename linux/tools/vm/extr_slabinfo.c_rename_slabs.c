
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {char* name; int refs; } ;
struct aliasinfo {char* name; } ;


 int actual_slabs ;
 struct aliasinfo* find_one_alias (struct slabinfo*) ;
 int show_first_alias ;
 struct slabinfo* slabinfo ;
 int slabs ;

__attribute__((used)) static void rename_slabs(void)
{
 struct slabinfo *s;
 struct aliasinfo *a;

 for (s = slabinfo; s < slabinfo + slabs; s++) {
  if (*s->name != ':')
   continue;

  if (s->refs > 1 && !show_first_alias)
   continue;

  a = find_one_alias(s);

  if (a)
   s->name = a->name;
  else {
   s->name = "*";
   actual_slabs--;
  }
 }
}
