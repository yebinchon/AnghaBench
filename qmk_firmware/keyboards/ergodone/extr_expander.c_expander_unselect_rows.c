
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPANDER_REG_IODIRB ;
 int expander_write (int ,int) ;

void expander_unselect_rows(void)
{
  expander_write(EXPANDER_REG_IODIRB, 0xFF);
}
