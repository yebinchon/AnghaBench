
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cur_base_seq; void** flag; int addr; scalar_t__ pwd_len; scalar_t__ ssid_len; scalar_t__ base_seq_valid; int base_len; int addr_len; scalar_t__ flag_match_num; } ;
typedef TYPE_1__ smart_addr_map ;


 int ADDR_MATCH_LENGTH ;
 int BASE_LENGTH ;
 void* SEP_1 ;
 int SEP_1_INDEX ;
 void* SEP_2 ;
 void* SSID_FLAG ;
 int memset (int ,int ,int ) ;

void reset_map(smart_addr_map **am, size_t num){
  int i;
  for (i = 0; i < num; ++i)
  {
    am[i]->flag_match_num = 0;
    am[i]->addr_len = ADDR_MATCH_LENGTH;
    am[i]->base_len = BASE_LENGTH;
    am[i]->cur_base_seq = -1;
    am[i]->base_seq_valid = 0;
    am[i]->ssid_len = 0;
    am[i]->pwd_len = 0;
    memset(am[i]->addr, 0, ADDR_MATCH_LENGTH);
    if(SEP_1_INDEX==0){
      am[i]->flag[0] = SEP_1;
      am[i]->flag[1] = SEP_2;
      am[i]->flag[2] = SSID_FLAG;
    }
    if(SEP_1_INDEX==2){
      am[i]->flag[0] = SSID_FLAG;
      am[i]->flag[1] = 0;
      am[i]->flag[2] = SEP_1;
      am[i]->flag[3] = SEP_2;
    }
  }
}
