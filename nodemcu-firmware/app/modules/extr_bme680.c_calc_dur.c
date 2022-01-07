
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int NODE_DBG (char*,int) ;
 int UINT32_C (int) ;
 scalar_t__ heatr_dur ;
 scalar_t__ os_hum ;
 scalar_t__ os_pres ;
 scalar_t__ os_temp ;

uint16_t calc_dur()
{
 uint32_t tph_dur;



 tph_dur = ((uint32_t) (os_temp + os_pres + os_hum) * UINT32_C(1963));
 tph_dur += UINT32_C(477 * 4);
 tph_dur += UINT32_C(477 * 5);
 tph_dur += UINT32_C(500);
 tph_dur /= UINT32_C(1000);

 tph_dur += UINT32_C(1);
  NODE_DBG("tpc_dur: %d\n", tph_dur);

 return heatr_dur + (uint16_t) tph_dur;
}
