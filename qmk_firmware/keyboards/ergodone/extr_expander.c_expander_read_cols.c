
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPANDER_REG_GPIOA ;
 int expander_input ;
 int expander_read (int ,int *) ;

void expander_read_cols(void)
{
  expander_read(EXPANDER_REG_GPIOA, &expander_input);
}
