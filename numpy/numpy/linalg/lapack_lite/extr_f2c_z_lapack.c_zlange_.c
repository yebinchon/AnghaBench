
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* logical ;
typedef int integer ;
typedef int doublereal ;
typedef int doublecomplex ;


 int c__1 ;
 int max (int,int) ;
 scalar_t__ min (int,int) ;
 int sqrt (int) ;
 int z_abs (int *) ;

doublereal zlange_(char *norm, integer *m, integer *n, doublecomplex *a,
 integer *lda, doublereal *work)
{

    integer a_dim1, a_offset, i__1, i__2;
    doublereal ret_val, d__1, d__2;


    static integer i__, j;
    static doublereal sum, scale;
    extern logical lsame_(char *, char *);
    static doublereal value;
    extern int zlassq_(integer *, doublecomplex *, integer *,
      doublereal *, doublereal *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --work;


    if (min(*m,*n) == 0) {
 value = 0.;
    } else if (lsame_(norm, "M")) {



 value = 0.;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {

  d__1 = value, d__2 = z_abs(&a[i__ + j * a_dim1]);
  value = max(d__1,d__2);

     }

 }
    } else if (lsame_(norm, "O") || *(unsigned char *)
     norm == '1') {



 value = 0.;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     sum = 0.;
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {
  sum += z_abs(&a[i__ + j * a_dim1]);

     }
     value = max(value,sum);

 }
    } else if (lsame_(norm, "I")) {



 i__1 = *m;
 for (i__ = 1; i__ <= i__1; ++i__) {
     work[i__] = 0.;

 }
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {
  work[i__] += z_abs(&a[i__ + j * a_dim1]);

     }

 }
 value = 0.;
 i__1 = *m;
 for (i__ = 1; i__ <= i__1; ++i__) {

     d__1 = value, d__2 = work[i__];
     value = max(d__1,d__2);

 }
    } else if (lsame_(norm, "F") || lsame_(norm, "E")) {



 scale = 0.;
 sum = 1.;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     zlassq_(m, &a[j * a_dim1 + 1], &c__1, &scale, &sum);

 }
 value = scale * sqrt(sum);
    }

    ret_val = value;
    return ret_val;



}
