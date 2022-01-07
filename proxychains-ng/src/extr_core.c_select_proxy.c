
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int select_type ;
struct TYPE_4__ {scalar_t__ ps; } ;
typedef TYPE_1__ proxy_data ;



 scalar_t__ PLAY_STATE ;

 unsigned int rand () ;

__attribute__((used)) static proxy_data *select_proxy(select_type how, proxy_data * pd, unsigned int proxy_count, unsigned int *offset) {
 unsigned int i = 0, k = 0;
 if(*offset >= proxy_count)
  return ((void*)0);
 switch (how) {
  case 128:
   do {
    k++;
    i = rand() % proxy_count;
   } while(pd[i].ps != PLAY_STATE && k < proxy_count * 100);
   break;
  case 129:
   for(i = *offset; i < proxy_count; i++) {
    if(pd[i].ps == PLAY_STATE) {
     *offset = i;
     break;
    }
   }
  default:
   break;
 }
 if(i >= proxy_count)
  i = 0;
 return (pd[i].ps == PLAY_STATE) ? &pd[i] : ((void*)0);
}
