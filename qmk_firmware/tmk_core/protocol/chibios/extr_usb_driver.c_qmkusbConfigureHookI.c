
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obqueue; int ibqueue; } ;
typedef TYPE_1__ QMKUSBDriver ;


 int CHN_CONNECTED ;
 int bqResumeX (int *) ;
 int chnAddFlagsI (TYPE_1__*,int ) ;
 int ibqResetI (int *) ;
 int obqResetI (int *) ;
 int qmkusb_start_receive (TYPE_1__*) ;

void qmkusbConfigureHookI(QMKUSBDriver *qmkusbp) {
    ibqResetI(&qmkusbp->ibqueue);
    bqResumeX(&qmkusbp->ibqueue);
    obqResetI(&qmkusbp->obqueue);
    bqResumeX(&qmkusbp->obqueue);
    chnAddFlagsI(qmkusbp, CHN_CONNECTED);
    (void)qmkusb_start_receive(qmkusbp);
}
