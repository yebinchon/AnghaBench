
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {int bc_storm_protect; int led_frequency; } ;


 int RT305X_ESW_GSC_BC_STROM_MASK ;
 int RT305X_ESW_GSC_BC_STROM_SHIFT ;
 int RT305X_ESW_GSC_LED_FREQ_MASK ;
 int RT305X_ESW_GSC_LED_FREQ_SHIFT ;
 int RT305X_ESW_REG_SGC ;
 int esw_rmw (struct rt305x_esw*,int ,int,int) ;

__attribute__((used)) static void esw_set_gsc(struct rt305x_esw *esw)
{
 esw_rmw(esw, RT305X_ESW_REG_SGC,
  RT305X_ESW_GSC_BC_STROM_MASK << RT305X_ESW_GSC_BC_STROM_SHIFT,
  esw->bc_storm_protect << RT305X_ESW_GSC_BC_STROM_SHIFT);
 esw_rmw(esw, RT305X_ESW_REG_SGC,
  RT305X_ESW_GSC_LED_FREQ_MASK << RT305X_ESW_GSC_LED_FREQ_SHIFT,
  esw->led_frequency << RT305X_ESW_GSC_LED_FREQ_SHIFT);
}
