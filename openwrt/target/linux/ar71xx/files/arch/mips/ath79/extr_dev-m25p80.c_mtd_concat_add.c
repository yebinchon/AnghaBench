
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int name; } ;


 int INIT_WORK (int *,int ) ;
 struct mtd_info** concat_devs ;
 int mtd_concat_add_work ;
 int mtd_concat_work ;
 int schedule_work (int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void mtd_concat_add(struct mtd_info *mtd)
{
 static bool registered = 0;

 if (registered)
  return;

 if (!strcmp(mtd->name, "spi0.0"))
  concat_devs[0] = mtd;
 else if (!strcmp(mtd->name, "spi0.1"))
  concat_devs[1] = mtd;
 else
  return;

 if (!concat_devs[0] || !concat_devs[1])
  return;

 registered = 1;
 INIT_WORK(&mtd_concat_work, mtd_concat_add_work);
 schedule_work(&mtd_concat_work);
}
