
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; scalar_t__ name; } ;
typedef TYPE_1__ arg ;


 scalar_t__ strcmp (char const*,scalar_t__) ;

__attribute__((used)) static int
lookup_name (const arg *table, const char *name)
{
  const arg *p;

  for (p = table; p->name; ++p) {
   if (strcmp (name, p->name) == 0) {
    return p->value;
   }
  }

  return -1;
}
