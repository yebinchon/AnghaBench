
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {int nr_parts; int parts; } ;


 int ARRAY_SIZE (int ) ;
 int concat_devs ;
 struct mtd_info* mtd_concat_create (int ,int ,char*) ;
 int mtd_device_register (struct mtd_info*,int ,int ) ;
 TYPE_1__* multi_pdata ;

__attribute__((used)) static void mtd_concat_add_work(struct work_struct *work)
{
 struct mtd_info *mtd;

 mtd = mtd_concat_create(concat_devs, ARRAY_SIZE(concat_devs), "flash");

 mtd_device_register(mtd, multi_pdata->parts, multi_pdata->nr_parts);
}
