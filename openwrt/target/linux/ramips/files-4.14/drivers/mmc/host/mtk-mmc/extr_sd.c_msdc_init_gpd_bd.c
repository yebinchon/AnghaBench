
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct msdc_host {int dummy; } ;
struct msdc_dma {scalar_t__ bd_addr; scalar_t__ gpd_addr; struct gpd* bd; struct gpd* gpd; } ;
struct gpd {int bdp; void* next; void* ptr; } ;
struct bd {int bdp; void* next; void* ptr; } ;


 int MAX_BD_NUM ;
 int memset (struct gpd*,int ,int) ;

__attribute__((used)) static void msdc_init_gpd_bd(struct msdc_host *host, struct msdc_dma *dma)
{
 struct gpd *gpd = dma->gpd;
 struct bd *bd = dma->bd;
 int i;





 memset(gpd, 0, sizeof(struct gpd) * 2);

 gpd->bdp = 1;
 gpd->ptr = (void *)dma->bd_addr;
 gpd->next = (void *)((u32)dma->gpd_addr + sizeof(struct gpd));

 memset(bd, 0, sizeof(struct bd) * MAX_BD_NUM);
 for (i = 0; i < (MAX_BD_NUM - 1); i++)
  bd[i].next = (void *)(dma->bd_addr + sizeof(*bd) * (i + 1));
}
