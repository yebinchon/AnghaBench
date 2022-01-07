
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPANDER_REG_GPPUA ;
 int EXPANDER_REG_IODIRB ;
 int EXPANDER_REG_IPOLA ;
 int expander_write (int ,int) ;

void expander_config(void)
{
  expander_write(EXPANDER_REG_IPOLA, 0xFF);
  expander_write(EXPANDER_REG_GPPUA, 0xFF);
  expander_write(EXPANDER_REG_IODIRB, 0xFF);
}
