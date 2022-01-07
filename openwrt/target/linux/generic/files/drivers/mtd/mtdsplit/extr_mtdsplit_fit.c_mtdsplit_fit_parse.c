
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {size_t offset; size_t size; int name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {size_t size; size_t erasesize; int name; } ;
struct fdt_header {int totalsize; int magic; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERNEL_PART_NAME ;
 size_t OF_DT_HEADER ;
 int ROOTFS_PART_NAME ;
 size_t be32_to_cpu (int ) ;
 struct mtd_partition* kzalloc (int,int ) ;
 int mtd_find_rootfs_from (struct mtd_info*,size_t,size_t,size_t*,int *) ;
 int mtd_read (struct mtd_info*,size_t,size_t,size_t*,void*) ;
 size_t mtd_rounddown_to_eb (size_t,struct mtd_info*) ;
 int pr_debug (char*,int ,unsigned long long) ;
 int pr_err (char*,int ,...) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int
mtdsplit_fit_parse(struct mtd_info *mtd,
     const struct mtd_partition **pparts,
            struct mtd_part_parser_data *data)
{
 struct fdt_header hdr;
 size_t hdr_len, retlen;
 size_t offset;
 size_t fit_offset, fit_size;
 size_t rootfs_offset, rootfs_size;
 struct mtd_partition *parts;
 int ret;

 hdr_len = sizeof(struct fdt_header);


 for(offset = 0; offset + hdr_len <= mtd->size; offset += mtd->erasesize) {
  ret = mtd_read(mtd, offset, hdr_len, &retlen, (void*) &hdr);
  if (ret) {
   pr_err("read error in \"%s\" at offset 0x%llx\n",
          mtd->name, (unsigned long long) offset);
   return ret;
  }

  if (retlen != hdr_len) {
   pr_err("short read in \"%s\"\n", mtd->name);
   return -EIO;
  }


  if (be32_to_cpu(hdr.magic) != OF_DT_HEADER) {
   pr_debug("no valid FIT image found in \"%s\" at offset %llx\n",
     mtd->name, (unsigned long long) offset);
   continue;
  }


  break;
 }

 fit_offset = offset;
 fit_size = be32_to_cpu(hdr.totalsize);

 if (fit_size == 0) {
  pr_err("FIT image in \"%s\" at offset %llx has null size\n",
         mtd->name, (unsigned long long) fit_offset);
  return -ENODEV;
 }


 ret = mtd_find_rootfs_from(mtd, fit_offset + fit_size, mtd->size,
       &rootfs_offset, ((void*)0));
 if (ret) {
  pr_info("no rootfs found after FIT image in \"%s\"\n",
   mtd->name);
  return ret;
 }

 rootfs_size = mtd->size - rootfs_offset;

 parts = kzalloc(2 * sizeof(*parts), GFP_KERNEL);
 if (!parts)
  return -ENOMEM;

 parts[0].name = KERNEL_PART_NAME;
 parts[0].offset = fit_offset;
 parts[0].size = mtd_rounddown_to_eb(fit_size, mtd) + mtd->erasesize;

 parts[1].name = ROOTFS_PART_NAME;
 parts[1].offset = rootfs_offset;
 parts[1].size = rootfs_size;

 *pparts = parts;
 return 2;
}
