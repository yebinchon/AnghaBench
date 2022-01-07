
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_nand_host {int * clk; int nand_chip; } ;
struct platform_device {int dummy; } ;
struct mtd_info {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int nand_release (struct mtd_info*) ;
 struct mtd_info* nand_to_mtd (int *) ;
 struct s5p_nand_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int s5p_nand_remove(struct platform_device *pdev)
{
 struct s5p_nand_host *host = platform_get_drvdata(pdev);
 struct mtd_info *mtd = nand_to_mtd(&host->nand_chip);

 nand_release(mtd);
 clk_disable_unprepare(host->clk[0]);
 clk_disable_unprepare(host->clk[1]);

 return 0;
}
