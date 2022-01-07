
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPANDER_PAUSE ;
 int EXPANDER_REG_IODIRA ;
 int EXPANDER_REG_IODIRB ;
 int EXPANDER_REG_OLATA ;
 int EXPANDER_REG_OLATB ;
 int expander_write (int ,int) ;
 int wait_us (int ) ;

void expander_unselect_all() {
    expander_write(EXPANDER_REG_IODIRA, 0xff);
    expander_write(EXPANDER_REG_IODIRB, 0xff);
    expander_write(EXPANDER_REG_OLATA, 0xff);
    expander_write(EXPANDER_REG_OLATB, 0xff);
    wait_us(EXPANDER_PAUSE);
}
