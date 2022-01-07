
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef size_t u16_t ;
struct memp {struct memp* next; } ;


 scalar_t__ LWIP_MEM_ALIGN (int ) ;
 size_t MEMP_MAX ;
 int MEMP_SANITY_REGION_AFTER_ALIGNED ;
 int MEMP_SIZE ;
 int MEMP_STATS_AVAIL (int ,size_t,size_t) ;
 int avail ;
 int err ;
 int max ;
 scalar_t__* memp_bases ;
 int memp_memory ;
 size_t* memp_num ;
 int memp_overflow_check_all () ;
 int memp_overflow_init () ;
 int* memp_sizes ;
 struct memp** memp_tab ;
 int used ;

void
memp_init(void)
{
  struct memp *memp;
  u16_t i, j;

  for (i = 0; i < MEMP_MAX; ++i) {
    MEMP_STATS_AVAIL(used, i, 0);
    MEMP_STATS_AVAIL(max, i, 0);
    MEMP_STATS_AVAIL(err, i, 0);
    MEMP_STATS_AVAIL(avail, i, memp_num[i]);
  }


  memp = (struct memp *)LWIP_MEM_ALIGN(memp_memory);


  for (i = 0; i < MEMP_MAX; ++i) {
    memp_tab[i] = ((void*)0);




    for (j = 0; j < memp_num[i]; ++j) {
      memp->next = (struct memp *)memp_tab[i];
      memp_tab[i] = memp;
      memp = (struct memp *)(void *)((u8_t *)memp + MEMP_SIZE + memp_sizes[i]



      );
    }
  }





}
