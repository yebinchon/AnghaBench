
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrgg03_header {int magic1; int size; } ;
struct wrg_header {int size; } ;
struct mtd_partition {size_t offset; size_t size; int name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {size_t size; } ;
typedef int hdr ;
typedef enum mtdsplit_part_type { ____Placeholder_mtdsplit_part_type } mtdsplit_part_type ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERNEL_PART_NAME ;
 int ROOTFS_PART_NAME ;
 int WRGG03_MAGIC ;
 int WRGG_MIN_ROOTFS_OFFS ;
 int WRGG_NR_PARTS ;
 int WRG_MAGIC ;
 size_t be32_to_cpu (int ) ;
 struct mtd_partition* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int mtd_find_rootfs_from (struct mtd_info*,int ,size_t,size_t*,int*) ;
 int mtd_read (struct mtd_info*,int ,size_t,size_t*,void*) ;

__attribute__((used)) static int mtdsplit_parse_wrgg(struct mtd_info *master,
          const struct mtd_partition **pparts,
          struct mtd_part_parser_data *data)
{
 struct wrgg03_header hdr;
 size_t hdr_len, retlen, kernel_ent_size;
 size_t rootfs_offset;
 struct mtd_partition *parts;
 enum mtdsplit_part_type type;
 int err;

 hdr_len = sizeof(hdr);
 err = mtd_read(master, 0, hdr_len, &retlen, (void *) &hdr);
 if (err)
  return err;

 if (retlen != hdr_len)
  return -EIO;


 if (le32_to_cpu(hdr.magic1) == WRGG03_MAGIC) {
  kernel_ent_size = hdr_len + be32_to_cpu(hdr.size);




  if (kernel_ent_size > master->size)
   kernel_ent_size = hdr_len + le32_to_cpu(hdr.size);


  if (kernel_ent_size > master->size)
   return -EINVAL;
 } else if (le32_to_cpu(hdr.magic1) == WRG_MAGIC) {
  kernel_ent_size = sizeof(struct wrg_header) + le32_to_cpu(
                    ((struct wrg_header*)&hdr)->size);
 } else {
  return -EINVAL;
 }

 if (kernel_ent_size > master->size)
  return -EINVAL;





 err = mtd_find_rootfs_from(master, WRGG_MIN_ROOTFS_OFFS,
       master->size, &rootfs_offset, &type);
 if (err)
  return err;

 parts = kzalloc(WRGG_NR_PARTS * sizeof(*parts), GFP_KERNEL);
 if (!parts)
  return -ENOMEM;

 parts[0].name = KERNEL_PART_NAME;
 parts[0].offset = 0;
 parts[0].size = rootfs_offset;

 parts[1].name = ROOTFS_PART_NAME;
 parts[1].offset = rootfs_offset;
 parts[1].size = master->size - rootfs_offset;

 *pparts = parts;
 return WRGG_NR_PARTS;
}
