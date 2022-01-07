
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef void* logical ;
typedef int integer ;
typedef float doublereal ;


 int c__1 ;
 int dabs (float) ;
 float dmax (float,float) ;
 scalar_t__ min (int,int) ;
 float sqrt (float) ;

doublereal slange_(char *norm, integer *m, integer *n, real *a, integer *lda,
 real *work)
{

    integer a_dim1, a_offset, i__1, i__2;
    real ret_val, r__1, r__2, r__3;


    static integer i__, j;
    static real sum, scale;
    extern logical lsame_(char *, char *);
    static real value;
    extern int slassq_(integer *, real *, integer *, real *,
     real *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --work;


    if (min(*m,*n) == 0) {
 value = 0.f;
    } else if (lsame_(norm, "M")) {



 value = 0.f;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {

  r__2 = value, r__3 = (r__1 = a[i__ + j * a_dim1], dabs(r__1));
  value = dmax(r__2,r__3);

     }

 }
    } else if (lsame_(norm, "O") || *(unsigned char *)
     norm == '1') {



 value = 0.f;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     sum = 0.f;
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {
  sum += (r__1 = a[i__ + j * a_dim1], dabs(r__1));

     }
     value = dmax(value,sum);

 }
    } else if (lsame_(norm, "I")) {



 i__1 = *m;
 for (i__ = 1; i__ <= i__1; ++i__) {
     work[i__] = 0.f;

 }
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {
  work[i__] += (r__1 = a[i__ + j * a_dim1], dabs(r__1));

     }

 }
 value = 0.f;
 i__1 = *m;
 for (i__ = 1; i__ <= i__1; ++i__) {

     r__1 = value, r__2 = work[i__];
     value = dmax(r__1,r__2);

 }
    } else if (lsame_(norm, "F") || lsame_(norm, "E")) {



 scale = 0.f;
 sum = 1.f;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     slassq_(m, &a[j * a_dim1 + 1], &c__1, &scale, &sum);

 }
 value = scale * sqrt(sum);
    }

    ret_val = value;
    return ret_val;



}
