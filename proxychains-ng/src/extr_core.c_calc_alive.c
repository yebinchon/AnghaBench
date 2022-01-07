
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ps; } ;
typedef TYPE_1__ proxy_data ;


 scalar_t__ PLAY_STATE ;
 int release_busy (TYPE_1__*,unsigned int) ;

__attribute__((used)) static unsigned int calc_alive(proxy_data * pd, unsigned int proxy_count) {
 unsigned int i;
 int alive_count = 0;
 release_busy(pd, proxy_count);
 for(i = 0; i < proxy_count; i++)
  if(pd[i].ps == PLAY_STATE)
   alive_count++;
 return alive_count;
}
