
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_nilfs2_data {int dummy; } ;
typedef int grub_uint64_t ;
typedef int grub_uint32_t ;


 int grub_divmod64 (int ,int ,int *) ;
 int grub_nilfs2_palloc_entries_per_group (struct grub_nilfs2_data*) ;

__attribute__((used)) static inline grub_uint64_t
grub_nilfs2_palloc_group (struct grub_nilfs2_data *data,
     grub_uint64_t nr, grub_uint32_t * offset)
{
  return grub_divmod64 (nr, grub_nilfs2_palloc_entries_per_group (data),
   offset);
}
