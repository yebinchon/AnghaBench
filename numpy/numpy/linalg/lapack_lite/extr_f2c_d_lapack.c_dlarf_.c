
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ logical ;
typedef int integer ;
typedef int doublereal ;


 int c__1 ;
 int c_b15 ;
 int c_b29 ;
 int iladlr_ (int*,int*,int*,int*) ;

int dlarf_(char *side, integer *m, integer *n, doublereal *v,
  integer *incv, doublereal *tau, doublereal *c__, integer *ldc,
 doublereal *work)
{

    integer c_dim1, c_offset;
    doublereal d__1;


    static integer i__;
    static logical applyleft;
    extern int dger_(integer *, integer *, doublereal *,
     doublereal *, integer *, doublereal *, integer *, doublereal *,
     integer *);
    extern logical lsame_(char *, char *);
    extern int dgemv_(char *, integer *, integer *,
     doublereal *, doublereal *, integer *, doublereal *, integer *,
     doublereal *, doublereal *, integer *);
    static integer lastc, lastv;
    extern integer iladlc_(integer *, integer *, doublereal *, integer *),
     iladlr_(integer *, integer *, doublereal *, integer *);
    --v;
    c_dim1 = *ldc;
    c_offset = 1 + c_dim1;
    c__ -= c_offset;
    --work;


    applyleft = lsame_(side, "L");
    lastv = 0;
    lastc = 0;
    if (*tau != 0.) {




 if (applyleft) {
     lastv = *m;
 } else {
     lastv = *n;
 }
 if (*incv > 0) {
     i__ = (lastv - 1) * *incv + 1;
 } else {
     i__ = 1;
 }

 while(lastv > 0 && v[i__] == 0.) {
     --lastv;
     i__ -= *incv;
 }
 if (applyleft) {

     lastc = iladlc_(&lastv, n, &c__[c_offset], ldc);
 } else {

     lastc = iladlr_(m, &lastv, &c__[c_offset], ldc);
 }
    }




    if (applyleft) {



 if (lastv > 0) {



     dgemv_("Transpose", &lastv, &lastc, &c_b15, &c__[c_offset], ldc, &
      v[1], incv, &c_b29, &work[1], &c__1);



     d__1 = -(*tau);
     dger_(&lastv, &lastc, &d__1, &v[1], incv, &work[1], &c__1, &c__[
      c_offset], ldc);
 }
    } else {



 if (lastv > 0) {



     dgemv_("No transpose", &lastc, &lastv, &c_b15, &c__[c_offset],
      ldc, &v[1], incv, &c_b29, &work[1], &c__1);



     d__1 = -(*tau);
     dger_(&lastc, &lastv, &d__1, &work[1], &c__1, &v[1], incv, &c__[
      c_offset], ldc);
 }
    }
    return 0;



}
