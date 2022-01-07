
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_uint64_t ;


 int grub_be_to_cpu64 (int ) ;
 int grub_le_to_cpu64 (int ) ;

__attribute__((used)) static grub_uint64_t
grub_num_to_cpu64 (grub_uint64_t num, int be)
{
  return (be) ? grub_be_to_cpu64 (num) : grub_le_to_cpu64 (num);
}
