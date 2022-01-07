
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct tffs_key_name_table {size_t size; TYPE_1__* entries; } ;
struct TYPE_2__ {char* val; } ;


 int printf (char*,char*) ;

__attribute__((used)) static void show_all_key_names(struct tffs_key_name_table *key_names)
{
 for (uint32_t i = 0; i < key_names->size; i++)
  printf("%s\n", key_names->entries[i].val);
}
