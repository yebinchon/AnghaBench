
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADAP_DELAY ;
 int gpio_direction_input (int ) ;
 int sda_index ;
 int udelay (int ) ;

__attribute__((used)) static inline void sdahi(void)
{
 gpio_direction_input(sda_index);
 udelay(ADAP_DELAY);
}
