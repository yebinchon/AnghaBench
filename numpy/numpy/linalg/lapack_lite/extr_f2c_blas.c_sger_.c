
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;


 int max (int,int) ;

int sger_(integer *m, integer *n, real *alpha, real *x,
 integer *incx, real *y, integer *incy, real *a, integer *lda)
{

    integer a_dim1, a_offset, i__1, i__2;


    static integer i__, j, ix, jy, kx, info;
    static real temp;
    extern int xerbla_(char *, integer *);
    --x;
    --y;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    info = 0;
    if (*m < 0) {
 info = 1;
    } else if (*n < 0) {
 info = 2;
    } else if (*incx == 0) {
 info = 5;
    } else if (*incy == 0) {
 info = 7;
    } else if (*lda < max(1,*m)) {
 info = 9;
    }
    if (info != 0) {
 xerbla_("SGER  ", &info);
 return 0;
    }



    if (*m == 0 || *n == 0 || *alpha == 0.f) {
 return 0;
    }






    if (*incy > 0) {
 jy = 1;
    } else {
 jy = 1 - (*n - 1) * *incy;
    }
    if (*incx == 1) {
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     if (y[jy] != 0.f) {
  temp = *alpha * y[jy];
  i__2 = *m;
  for (i__ = 1; i__ <= i__2; ++i__) {
      a[i__ + j * a_dim1] += x[i__] * temp;

  }
     }
     jy += *incy;

 }
    } else {
 if (*incx > 0) {
     kx = 1;
 } else {
     kx = 1 - (*m - 1) * *incx;
 }
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     if (y[jy] != 0.f) {
  temp = *alpha * y[jy];
  ix = kx;
  i__2 = *m;
  for (i__ = 1; i__ <= i__2; ++i__) {
      a[i__ + j * a_dim1] += x[ix] * temp;
      ix += *incx;

  }
     }
     jy += *incy;

 }
    }

    return 0;



}
