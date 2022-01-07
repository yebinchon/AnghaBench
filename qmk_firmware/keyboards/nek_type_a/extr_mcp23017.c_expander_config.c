
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXPANDER_REG_GPINTENA ;
 int EXPANDER_REG_GPINTENB ;
 int EXPANDER_REG_GPPUA ;
 int EXPANDER_REG_GPPUB ;
 int EXPANDER_REG_IODIRA ;
 int EXPANDER_REG_IODIRB ;
 int EXPANDER_REG_IPOLA ;
 int EXPANDER_REG_IPOLB ;
 int expander_write (int ,int) ;

void expander_config() {

    expander_write(EXPANDER_REG_IODIRA, 0xff);
    expander_write(EXPANDER_REG_IODIRB, 0xff);


    expander_write(EXPANDER_REG_GPPUA, 0xff);
    expander_write(EXPANDER_REG_GPPUB, 0xff);


    expander_write(EXPANDER_REG_GPINTENA, 0x0);
    expander_write(EXPANDER_REG_GPINTENB, 0x0);


    expander_write(EXPANDER_REG_IPOLA, 0x0);
    expander_write(EXPANDER_REG_IPOLB, 0x0);
}
