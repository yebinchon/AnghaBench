
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pg_encoding {int dummy; } ;
struct TYPE_2__ {struct pg_encoding const enc; scalar_t__ name; } ;


 TYPE_1__* enclist ;
 scalar_t__ pg_strcasecmp (scalar_t__,char const*) ;

__attribute__((used)) static const struct pg_encoding *
pg_find_encoding(const char *name)
{
 int i;

 for (i = 0; enclist[i].name; i++)
  if (pg_strcasecmp(enclist[i].name, name) == 0)
   return &enclist[i].enc;

 return ((void*)0);
}
