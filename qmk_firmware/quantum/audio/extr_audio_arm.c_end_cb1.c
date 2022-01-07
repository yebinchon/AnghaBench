
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dacsample_t ;
typedef int DACDriver ;


 int * dac_buffer ;
 size_t nx ;
 size_t ny ;
 int nz ;

__attribute__((used)) static void end_cb1(DACDriver *dacp, dacsample_t *buffer, size_t n) {
    (void)dacp;

    nz++;
    if (dac_buffer == buffer) {
        nx += n;
    } else {
        ny += n;
    }

    if ((nz % 1000) == 0) {

    }
}
