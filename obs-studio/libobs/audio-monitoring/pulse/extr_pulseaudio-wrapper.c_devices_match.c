
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfree (char*) ;
 int get_default_id (char**) ;
 scalar_t__ strcmp (char const*,char const*) ;

bool devices_match(const char *id1, const char *id2)
{
 bool match;
 char *name1 = ((void*)0);
 char *name2 = ((void*)0);

 if (!id1 || !id2)
  return 0;

 if (strcmp(id1, "default") == 0) {
  get_default_id(&name1);
  id1 = name1;
 }
 if (strcmp(id2, "default") == 0) {
  get_default_id(&name2);
  id2 = name2;
 }

 match = strcmp(id1, id2) == 0;
 bfree(name1);
 bfree(name2);
 return match;
}
