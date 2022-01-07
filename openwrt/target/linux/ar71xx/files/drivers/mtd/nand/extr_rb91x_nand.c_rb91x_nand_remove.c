
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb91x_nand_info {int dummy; } ;
struct platform_device {int dummy; } ;


 int nand_release (int ) ;
 struct rb91x_nand_info* platform_get_drvdata (struct platform_device*) ;
 int rbinfo_to_mtd (struct rb91x_nand_info*) ;

__attribute__((used)) static int rb91x_nand_remove(struct platform_device *pdev)
{
 struct rb91x_nand_info *info = platform_get_drvdata(pdev);

 nand_release(rbinfo_to_mtd(info));

 return 0;
}
