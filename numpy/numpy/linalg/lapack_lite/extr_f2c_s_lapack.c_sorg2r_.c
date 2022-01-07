
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;


 int c__1 ;
 int max (int,int) ;
 int slarf_ (char*,int*,int*,float*,int*,float*,float*,int*,float*) ;
 int xerbla_ (char*,int*) ;

int sorg2r_(integer *m, integer *n, integer *k, real *a,
 integer *lda, real *tau, real *work, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2;
    real r__1;


    static integer i__, j, l;
    extern int sscal_(integer *, real *, real *, integer *),
     slarf_(char *, integer *, integer *, real *, integer *, real *,
     real *, integer *, real *), xerbla_(char *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;


    *info = 0;
    if (*m < 0) {
 *info = -1;
    } else if (*n < 0 || *n > *m) {
 *info = -2;
    } else if (*k < 0 || *k > *n) {
 *info = -3;
    } else if (*lda < max(1,*m)) {
 *info = -5;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SORG2R", &i__1);
 return 0;
    }



    if (*n <= 0) {
 return 0;
    }



    i__1 = *n;
    for (j = *k + 1; j <= i__1; ++j) {
 i__2 = *m;
 for (l = 1; l <= i__2; ++l) {
     a[l + j * a_dim1] = 0.f;

 }
 a[j + j * a_dim1] = 1.f;

    }

    for (i__ = *k; i__ >= 1; --i__) {



 if (i__ < *n) {
     a[i__ + i__ * a_dim1] = 1.f;
     i__1 = *m - i__ + 1;
     i__2 = *n - i__;
     slarf_("Left", &i__1, &i__2, &a[i__ + i__ * a_dim1], &c__1, &tau[
      i__], &a[i__ + (i__ + 1) * a_dim1], lda, &work[1]);
 }
 if (i__ < *m) {
     i__1 = *m - i__;
     r__1 = -tau[i__];
     sscal_(&i__1, &r__1, &a[i__ + 1 + i__ * a_dim1], &c__1);
 }
 a[i__ + i__ * a_dim1] = 1.f - tau[i__];



 i__1 = i__ - 1;
 for (l = 1; l <= i__1; ++l) {
     a[l + i__ * a_dim1] = 0.f;

 }

    }
    return 0;



}
