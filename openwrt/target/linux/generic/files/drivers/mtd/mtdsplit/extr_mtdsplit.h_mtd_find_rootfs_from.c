
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
typedef enum mtdsplit_part_type { ____Placeholder_mtdsplit_part_type } mtdsplit_part_type ;


 int ENODEV ;

__attribute__((used)) static inline int mtd_find_rootfs_from(struct mtd_info *mtd,
           size_t from,
           size_t limit,
           size_t *ret_offset,
           enum mtdsplit_part_type *type)
{
 return -ENODEV;
}
