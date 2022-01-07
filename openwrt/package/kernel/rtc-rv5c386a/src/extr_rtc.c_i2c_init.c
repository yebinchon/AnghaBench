
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_set_value (int ,int ) ;
 int scl_index ;
 int sclhi () ;
 int sda_index ;
 int sdahi () ;

__attribute__((used)) static void i2c_init(void)
{



   gpio_set_value(sda_index, 0);
   gpio_set_value(scl_index, 0);
 sdahi();
 sclhi();
}
