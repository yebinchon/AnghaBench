
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath79_eth_pll_data {int pll_1000; int pll_100; int pll_10; } ;


 int BUG () ;



 struct ath79_eth_pll_data ath79_eth0_pll_data ;
 struct ath79_eth_pll_data ath79_eth1_pll_data ;

__attribute__((used)) static u32 ath79_get_eth_pll(unsigned int mac, int speed)
{
 struct ath79_eth_pll_data *pll_data;
 u32 pll_val;

 switch (mac) {
 case 0:
  pll_data = &ath79_eth0_pll_data;
  break;
 case 1:
  pll_data = &ath79_eth1_pll_data;
  break;
 default:
  BUG();
 }

 switch (speed) {
 case 130:
  pll_val = pll_data->pll_10;
  break;
 case 129:
  pll_val = pll_data->pll_100;
  break;
 case 128:
  pll_val = pll_data->pll_1000;
  break;
 default:
  BUG();
 }

 return pll_val;
}
