
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLKPCE ;
 int CLKPR ;
 int CLKPS0 ;
 int CLKPS1 ;
 int CLKPS2 ;
 int CLKPS3 ;
 int MCUSR ;
 int WDRF ;
 int wdt_disable () ;

__attribute__((used)) static void setup_mcu(void) {

    MCUSR &= ~(1 << WDRF);
    wdt_disable();




    CLKPR = (1 << CLKPCE);
    CLKPR = (0 << CLKPS3) | (0 << CLKPS2) | (0 << CLKPS1) | (0 << CLKPS0);
}
