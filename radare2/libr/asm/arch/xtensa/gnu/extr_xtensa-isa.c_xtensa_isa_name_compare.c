
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
typedef TYPE_1__ xtensa_lookup_entry ;


 int r_str_casecmp (int ,int ) ;

int
xtensa_isa_name_compare (const void *v1, const void *v2)
{
  xtensa_lookup_entry *e1 = (xtensa_lookup_entry *) v1;
  xtensa_lookup_entry *e2 = (xtensa_lookup_entry *) v2;

  return r_str_casecmp (e1->key, e2->key);
}
