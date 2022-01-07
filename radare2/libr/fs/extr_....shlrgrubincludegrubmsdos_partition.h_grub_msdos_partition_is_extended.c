
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRUB_PC_PARTITION_TYPE_EXTENDED ;
 int GRUB_PC_PARTITION_TYPE_LINUX_EXTENDED ;
 int GRUB_PC_PARTITION_TYPE_WIN95_EXTENDED ;

__attribute__((used)) static inline int
grub_msdos_partition_is_extended (int type)
{
  return (type == GRUB_PC_PARTITION_TYPE_EXTENDED
   || type == GRUB_PC_PARTITION_TYPE_WIN95_EXTENDED
   || type == GRUB_PC_PARTITION_TYPE_LINUX_EXTENDED);
}
