
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int mt7621_gsw_remove(struct platform_device *pdev)
{
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
