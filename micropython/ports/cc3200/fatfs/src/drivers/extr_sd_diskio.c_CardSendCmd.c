
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_SDHostCmdReset (int ) ;
 int MAP_SDHostCmdSend (int ,unsigned int,unsigned int) ;
 int MAP_SDHostIntClear (int ,int) ;
 unsigned long MAP_SDHostIntStatus (int ) ;
 int SDHOST_BASE ;
 unsigned long SDHOST_INT_CC ;
 unsigned long SDHOST_INT_ERRI ;

__attribute__((used)) static unsigned int CardSendCmd (unsigned int ulCmd, unsigned int ulArg) {
    unsigned long ulStatus;


    MAP_SDHostIntClear(SDHOST_BASE,0xFFFFFFFF);


    MAP_SDHostCmdSend(SDHOST_BASE,ulCmd,ulArg);


    do {
        ulStatus = MAP_SDHostIntStatus(SDHOST_BASE);
        ulStatus = (ulStatus & (SDHOST_INT_CC | SDHOST_INT_ERRI));
    } while (!ulStatus);


    if (ulStatus & SDHOST_INT_ERRI) {

        MAP_SDHostCmdReset(SDHOST_BASE);
        return 1;
    }
    else {
        return 0;
    }
}
