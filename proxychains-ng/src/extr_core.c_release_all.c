
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ps; } ;
typedef TYPE_1__ proxy_data ;


 int PLAY_STATE ;

__attribute__((used)) static void release_all(proxy_data * pd, unsigned int proxy_count) {
 unsigned int i;
 for(i = 0; i < proxy_count; i++)
  pd[i].ps = PLAY_STATE;
 return;
}
