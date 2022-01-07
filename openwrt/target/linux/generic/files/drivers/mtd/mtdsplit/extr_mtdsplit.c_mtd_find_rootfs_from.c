
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
typedef enum mtdsplit_part_type { ____Placeholder_mtdsplit_part_type } mtdsplit_part_type ;


 int ENODEV ;
 int mtd_check_rootfs_magic (struct mtd_info*,size_t,int*) ;
 size_t mtd_next_eb (struct mtd_info*,size_t) ;

int mtd_find_rootfs_from(struct mtd_info *mtd,
    size_t from,
    size_t limit,
    size_t *ret_offset,
    enum mtdsplit_part_type *type)
{
 size_t offset;
 int err;

 for (offset = from; offset < limit;
      offset = mtd_next_eb(mtd, offset)) {
  err = mtd_check_rootfs_magic(mtd, offset, type);
  if (err)
   continue;

  *ret_offset = offset;
  return 0;
 }

 return -ENODEV;
}
