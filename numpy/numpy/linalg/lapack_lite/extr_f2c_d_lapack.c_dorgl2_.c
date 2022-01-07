
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer ;
typedef int doublereal ;


 int dlarf_ (char*,int*,int*,int*,int*,int*,int*,int*,int*) ;
 int max (int,int) ;
 int xerbla_ (char*,int*) ;

int dorgl2_(integer *m, integer *n, integer *k, doublereal *
 a, integer *lda, doublereal *tau, doublereal *work, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2;
    doublereal d__1;


    static integer i__, j, l;
    extern int dscal_(integer *, doublereal *, doublereal *,
     integer *), dlarf_(char *, integer *, integer *, doublereal *,
     integer *, doublereal *, doublereal *, integer *, doublereal *), xerbla_(char *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;


    *info = 0;
    if (*m < 0) {
 *info = -1;
    } else if (*n < *m) {
 *info = -2;
    } else if (*k < 0 || *k > *m) {
 *info = -3;
    } else if (*lda < max(1,*m)) {
 *info = -5;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DORGL2", &i__1);
 return 0;
    }



    if (*m <= 0) {
 return 0;
    }

    if (*k < *m) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (l = *k + 1; l <= i__2; ++l) {
  a[l + j * a_dim1] = 0.;

     }
     if (j > *k && j <= *m) {
  a[j + j * a_dim1] = 1.;
     }

 }
    }

    for (i__ = *k; i__ >= 1; --i__) {



 if (i__ < *n) {
     if (i__ < *m) {
  a[i__ + i__ * a_dim1] = 1.;
  i__1 = *m - i__;
  i__2 = *n - i__ + 1;
  dlarf_("Right", &i__1, &i__2, &a[i__ + i__ * a_dim1], lda, &
   tau[i__], &a[i__ + 1 + i__ * a_dim1], lda, &work[1]);
     }
     i__1 = *n - i__;
     d__1 = -tau[i__];
     dscal_(&i__1, &d__1, &a[i__ + (i__ + 1) * a_dim1], lda);
 }
 a[i__ + i__ * a_dim1] = 1. - tau[i__];



 i__1 = i__ - 1;
 for (l = 1; l <= i__1; ++l) {
     a[i__ + l * a_dim1] = 0.;

 }

    }
    return 0;



}
