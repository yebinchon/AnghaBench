
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef scalar_t__ logical ;
typedef int integer ;


 int c__1 ;
 float c_b15 ;
 float c_b29 ;
 int ilaslr_ (int*,int*,float*,int*) ;

int slarf_(char *side, integer *m, integer *n, real *v,
 integer *incv, real *tau, real *c__, integer *ldc, real *work)
{

    integer c_dim1, c_offset;
    real r__1;


    static integer i__;
    static logical applyleft;
    extern int sger_(integer *, integer *, real *, real *,
     integer *, real *, integer *, real *, integer *);
    extern logical lsame_(char *, char *);
    static integer lastc;
    extern int sgemv_(char *, integer *, integer *, real *,
     real *, integer *, real *, integer *, real *, real *, integer *);
    static integer lastv;
    extern integer ilaslc_(integer *, integer *, real *, integer *), ilaslr_(
     integer *, integer *, real *, integer *);
    --v;
    c_dim1 = *ldc;
    c_offset = 1 + c_dim1;
    c__ -= c_offset;
    --work;


    applyleft = lsame_(side, "L");
    lastv = 0;
    lastc = 0;
    if (*tau != 0.f) {




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

 while(lastv > 0 && v[i__] == 0.f) {
     --lastv;
     i__ -= *incv;
 }
 if (applyleft) {

     lastc = ilaslc_(&lastv, n, &c__[c_offset], ldc);
 } else {

     lastc = ilaslr_(m, &lastv, &c__[c_offset], ldc);
 }
    }




    if (applyleft) {



 if (lastv > 0) {



     sgemv_("Transpose", &lastv, &lastc, &c_b15, &c__[c_offset], ldc, &
      v[1], incv, &c_b29, &work[1], &c__1);



     r__1 = -(*tau);
     sger_(&lastv, &lastc, &r__1, &v[1], incv, &work[1], &c__1, &c__[
      c_offset], ldc);
 }
    } else {



 if (lastv > 0) {



     sgemv_("No transpose", &lastc, &lastv, &c_b15, &c__[c_offset],
      ldc, &v[1], incv, &c_b29, &work[1], &c__1);



     r__1 = -(*tau);
     sger_(&lastc, &lastv, &r__1, &work[1], &c__1, &v[1], incv, &c__[
      c_offset], ldc);
 }
    }
    return 0;



}
