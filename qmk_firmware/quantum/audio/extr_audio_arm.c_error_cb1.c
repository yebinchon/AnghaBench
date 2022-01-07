
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dacerror_t ;
typedef int DACDriver ;


 int chSysHalt (char*) ;

__attribute__((used)) static void error_cb1(DACDriver *dacp, dacerror_t err) {
    (void)dacp;
    (void)err;

    chSysHalt("DAC failure");
}
