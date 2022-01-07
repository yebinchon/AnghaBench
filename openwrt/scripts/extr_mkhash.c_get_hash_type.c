
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_type {int name; } ;


 int ARRAY_SIZE (struct hash_type*) ;
 int strcmp (int ,char const*) ;
 struct hash_type* types ;

__attribute__((used)) static struct hash_type *get_hash_type(const char *name)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(types); i++) {
  struct hash_type *t = &types[i];

  if (!strcmp(t->name, name))
   return t;
 }
 return ((void*)0);
}
