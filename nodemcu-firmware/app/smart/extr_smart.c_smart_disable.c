
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wifi_promiscuous_enable (int ) ;

void smart_disable(void){
  wifi_promiscuous_enable(0);
}
