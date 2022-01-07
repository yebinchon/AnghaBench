
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_attrlist {int n_attr; struct switch_attr const* attr; } ;
struct switch_attr {int name; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static const struct switch_attr *
swconfig_find_attr_by_name(const struct switch_attrlist *alist,
    const char *name)
{
 int i;

 for (i = 0; i < alist->n_attr; i++)
  if (strcmp(name, alist->attr[i].name) == 0)
   return &alist->attr[i];

 return ((void*)0);
}
