
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb4xx_spi {int master; int ahb_clk; int base; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int iounmap (int ) ;
 struct rb4xx_spi* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int spi_master_put (int ) ;

__attribute__((used)) static int rb4xx_spi_remove(struct platform_device *pdev)
{
 struct rb4xx_spi *rbspi = platform_get_drvdata(pdev);

 iounmap(rbspi->base);
 clk_disable_unprepare(rbspi->ahb_clk);
 clk_put(rbspi->ahb_clk);
 platform_set_drvdata(pdev, ((void*)0));
 spi_master_put(rbspi->master);

 return 0;
}
