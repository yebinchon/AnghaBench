
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obqueue; int ibqueue; } ;
typedef TYPE_1__ QMKUSBDriver ;


 int CHN_CONNECTED ;
 int bqResumeX (int *) ;
 int chnAddFlagsI (TYPE_1__*,int ) ;

void qmkusbWakeupHookI(QMKUSBDriver *qmkusbp) {
    chnAddFlagsI(qmkusbp, CHN_CONNECTED);
    bqResumeX(&qmkusbp->ibqueue);
    bqResumeX(&qmkusbp->obqueue);
}
