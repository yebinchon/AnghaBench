
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;
typedef int ftnlen ;


 int i_nint (float*) ;
 float log (float) ;
 int max (int,int) ;

integer iparmq_(integer *ispec, char *name__, char *opts, integer *n, integer
 *ilo, integer *ihi, integer *lwork, ftnlen name_len, ftnlen opts_len)
{

    integer ret_val, i__1, i__2;
    real r__1;


    static integer nh, ns;
    if (*ispec == 15 || *ispec == 13 || *ispec == 16) {



 nh = *ihi - *ilo + 1;
 ns = 2;
 if (nh >= 30) {
     ns = 4;
 }
 if (nh >= 60) {
     ns = 10;
 }
 if (nh >= 150) {

     r__1 = log((real) nh) / log(2.f);
     i__1 = 10, i__2 = nh / i_nint(&r__1);
     ns = max(i__1,i__2);
 }
 if (nh >= 590) {
     ns = 64;
 }
 if (nh >= 3000) {
     ns = 128;
 }
 if (nh >= 6000) {
     ns = 256;
 }

 i__1 = 2, i__2 = ns - ns % 2;
 ns = max(i__1,i__2);
    }

    if (*ispec == 12) {
 ret_val = 75;

    } else if (*ispec == 14) {







 ret_val = 14;

    } else if (*ispec == 15) {



 ret_val = ns;

    } else if (*ispec == 13) {



 if (nh <= 500) {
     ret_val = ns;
 } else {
     ret_val = ns * 3 / 2;
 }

    } else if (*ispec == 16) {
 ret_val = 0;
 if (ns >= 14) {
     ret_val = 1;
 }
 if (ns >= 14) {
     ret_val = 2;
 }

    } else {

 ret_val = -1;

    }



    return ret_val;
}
