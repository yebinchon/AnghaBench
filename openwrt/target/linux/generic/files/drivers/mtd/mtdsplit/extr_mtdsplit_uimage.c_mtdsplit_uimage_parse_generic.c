
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {int dummy; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {int dummy; } ;


 int __mtdsplit_parse_uimage (struct mtd_info*,struct mtd_partition const**,struct mtd_part_parser_data*,int ) ;
 int uimage_verify_default ;

__attribute__((used)) static int
mtdsplit_uimage_parse_generic(struct mtd_info *master,
         const struct mtd_partition **pparts,
         struct mtd_part_parser_data *data)
{
 return __mtdsplit_parse_uimage(master, pparts, data,
          uimage_verify_default);
}
