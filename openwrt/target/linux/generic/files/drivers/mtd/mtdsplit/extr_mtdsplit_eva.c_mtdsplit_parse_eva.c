
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {unsigned long offset; unsigned long size; int name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {unsigned long size; } ;
struct eva_image_header {int size; int magic; } ;
typedef int hdr ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ EVA_DUMMY_SQUASHFS_SIZE ;
 unsigned long EVA_FOOTER_SIZE ;
 unsigned long EVA_MAGIC ;
 int EVA_NR_PARTS ;
 int GFP_KERNEL ;
 int KERNEL_PART_NAME ;
 int ROOTFS_PART_NAME ;
 struct mtd_partition* kzalloc (int,int ) ;
 unsigned long le32_to_cpu (int ) ;
 int mtd_check_rootfs_magic (struct mtd_info*,unsigned long,int *) ;
 int mtd_read (struct mtd_info*,int ,int,size_t*,void*) ;
 unsigned long round_up (unsigned long,int) ;

__attribute__((used)) static int mtdsplit_parse_eva(struct mtd_info *master,
    const struct mtd_partition **pparts,
    struct mtd_part_parser_data *data)
{
 struct mtd_partition *parts;
 struct eva_image_header hdr;
 size_t retlen;
 unsigned long kernel_size, rootfs_offset;
 int err;

 err = mtd_read(master, 0, sizeof(hdr), &retlen, (void *) &hdr);
 if (err)
  return err;

 if (retlen != sizeof(hdr))
  return -EIO;

 if (le32_to_cpu(hdr.magic) != EVA_MAGIC)
  return -EINVAL;

 kernel_size = le32_to_cpu(hdr.size) + EVA_FOOTER_SIZE;


 rootfs_offset = round_up(kernel_size, 0x10000);


 rootfs_offset += EVA_DUMMY_SQUASHFS_SIZE;

 if (rootfs_offset >= master->size)
  return -EINVAL;

 err = mtd_check_rootfs_magic(master, rootfs_offset, ((void*)0));
 if (err)
  return err;

 parts = kzalloc(EVA_NR_PARTS * sizeof(*parts), GFP_KERNEL);
 if (!parts)
  return -ENOMEM;

 parts[0].name = KERNEL_PART_NAME;
 parts[0].offset = 0;
 parts[0].size = kernel_size;

 parts[1].name = ROOTFS_PART_NAME;
 parts[1].offset = rootfs_offset;
 parts[1].size = master->size - rootfs_offset;

 *pparts = parts;
 return EVA_NR_PARTS;
}
