
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wifi_promiscuous_enable (int) ;
 int wifi_set_channel (int) ;

__attribute__((used)) static void start_actually_monitoring() {
  wifi_set_channel(1);
  wifi_promiscuous_enable(1);
}
