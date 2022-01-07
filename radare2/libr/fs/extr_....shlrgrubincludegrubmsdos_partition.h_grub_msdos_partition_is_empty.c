
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRUB_PC_PARTITION_TYPE_NONE ;

__attribute__((used)) static inline int
grub_msdos_partition_is_empty (int type)
{
  return (type == GRUB_PC_PARTITION_TYPE_NONE);
}
