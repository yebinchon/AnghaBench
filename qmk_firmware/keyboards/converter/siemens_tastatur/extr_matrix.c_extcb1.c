
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expchannel_t ;
typedef int EXTDriver ;


 int EXTD1 ;
 int GPIOA ;
 int GPIOB ;
 int chSysLockFromISR () ;
 int chSysUnlockFromISR () ;
 int extChannelDisable (int *,int) ;
 int extChannelEnable (int *,int) ;
 void* palReadPort (int ) ;
 void* porta_buffer ;
 void* portb_buffer ;

__attribute__((used)) static void extcb1(EXTDriver *extp, expchannel_t channel) {

    (void)extp;
    (void)channel;
    chSysLockFromISR();
    porta_buffer = palReadPort(GPIOA);
    portb_buffer = palReadPort(GPIOB);

    extChannelDisable(&EXTD1,0);
    extChannelDisable(&EXTD1,1);
    extChannelDisable(&EXTD1,2);
    extChannelDisable(&EXTD1,9);
    extChannelDisable(&EXTD1,10);
    extChannelDisable(&EXTD1,12);
    extChannelDisable(&EXTD1,13);
    extChannelDisable(&EXTD1,14);
    extChannelDisable(&EXTD1,15);

    extChannelEnable(&EXTD1,0);
    extChannelEnable(&EXTD1,1);
    extChannelEnable(&EXTD1,2);
    extChannelEnable(&EXTD1,9);
    extChannelEnable(&EXTD1,10);
    extChannelEnable(&EXTD1,12);
    extChannelEnable(&EXTD1,13);
    extChannelEnable(&EXTD1,14);
    extChannelEnable(&EXTD1,15);
    chSysUnlockFromISR();
}
