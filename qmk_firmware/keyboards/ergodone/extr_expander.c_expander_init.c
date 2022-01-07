
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expander_scan () ;
 int i2c_init () ;

void expander_init(void)
{
  i2c_init();
  expander_scan();
}
