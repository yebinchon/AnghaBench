
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptor {int name; struct descriptor* next; } ;


 int ECPG_SQLSTATE_INVALID_SQL_DESCRIPTOR_NAME ;
 int ECPG_UNKNOWN_DESCRIPTOR ;
 int ecpg_raise (int,int ,int ,char const*) ;
 struct descriptor* get_descriptors () ;
 scalar_t__ strcmp (char const*,int ) ;

struct descriptor *
ecpg_find_desc(int line, const char *name)
{
 struct descriptor *desc;

 for (desc = get_descriptors(); desc; desc = desc->next)
 {
  if (strcmp(name, desc->name) == 0)
   return desc;
 }

 ecpg_raise(line, ECPG_UNKNOWN_DESCRIPTOR, ECPG_SQLSTATE_INVALID_SQL_DESCRIPTOR_NAME, name);
 return ((void*)0);
}
