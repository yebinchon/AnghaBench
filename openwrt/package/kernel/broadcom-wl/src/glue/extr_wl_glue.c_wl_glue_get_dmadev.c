
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {struct device* dma_dev; } ;
struct device {int dummy; } ;
struct bcma_device {struct device* dma_dev; } ;


 int BUG () ;


 int active_bus_type ;

struct device * wl_glue_get_dmadev(void *dev)
{
 struct device *dma_dev;

 switch (active_bus_type)
 {
 default:
  BUG();
  dma_dev = ((void*)0);
  break;
 }

 return dma_dev;
}
