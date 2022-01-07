
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_partition_map_t ;


 int GRUB_AS_LIST (int ) ;
 int GRUB_AS_LIST_P (int *) ;
 int GRUB_MODATTR (char*,char*) ;
 int grub_list_push (int ,int ) ;
 int grub_partition_map_list ;

__attribute__((used)) static inline void
grub_partition_map_register (grub_partition_map_t partmap)
{
  grub_list_push (GRUB_AS_LIST_P (&grub_partition_map_list),
    GRUB_AS_LIST (partmap));
  GRUB_MODATTR ("partmap", "");
}
