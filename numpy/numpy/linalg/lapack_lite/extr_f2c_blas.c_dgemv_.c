
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* logical ;
typedef int integer ;
typedef int doublereal ;


 int max (int,int) ;

int dgemv_(char *trans, integer *m, integer *n, doublereal *
 alpha, doublereal *a, integer *lda, doublereal *x, integer *incx,
 doublereal *beta, doublereal *y, integer *incy)
{

    integer a_dim1, a_offset, i__1, i__2;


    static integer i__, j, ix, iy, jx, jy, kx, ky, info;
    static doublereal temp;
    static integer lenx, leny;
    extern logical lsame_(char *, char *);
    extern int xerbla_(char *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --x;
    --y;


    info = 0;
    if (! lsame_(trans, "N") && ! lsame_(trans, "T") && ! lsame_(trans, "C")
     ) {
 info = 1;
    } else if (*m < 0) {
 info = 2;
    } else if (*n < 0) {
 info = 3;
    } else if (*lda < max(1,*m)) {
 info = 6;
    } else if (*incx == 0) {
 info = 8;
    } else if (*incy == 0) {
 info = 11;
    }
    if (info != 0) {
 xerbla_("DGEMV ", &info);
 return 0;
    }



    if (*m == 0 || *n == 0 || *alpha == 0. && *beta == 1.) {
 return 0;
    }






    if (lsame_(trans, "N")) {
 lenx = *n;
 leny = *m;
    } else {
 lenx = *m;
 leny = *n;
    }
    if (*incx > 0) {
 kx = 1;
    } else {
 kx = 1 - (lenx - 1) * *incx;
    }
    if (*incy > 0) {
 ky = 1;
    } else {
 ky = 1 - (leny - 1) * *incy;
    }
    if (*beta != 1.) {
 if (*incy == 1) {
     if (*beta == 0.) {
  i__1 = leny;
  for (i__ = 1; i__ <= i__1; ++i__) {
      y[i__] = 0.;

  }
     } else {
  i__1 = leny;
  for (i__ = 1; i__ <= i__1; ++i__) {
      y[i__] = *beta * y[i__];

  }
     }
 } else {
     iy = ky;
     if (*beta == 0.) {
  i__1 = leny;
  for (i__ = 1; i__ <= i__1; ++i__) {
      y[iy] = 0.;
      iy += *incy;

  }
     } else {
  i__1 = leny;
  for (i__ = 1; i__ <= i__1; ++i__) {
      y[iy] = *beta * y[iy];
      iy += *incy;

  }
     }
 }
    }
    if (*alpha == 0.) {
 return 0;
    }
    if (lsame_(trans, "N")) {



 jx = kx;
 if (*incy == 1) {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  if (x[jx] != 0.) {
      temp = *alpha * x[jx];
      i__2 = *m;
      for (i__ = 1; i__ <= i__2; ++i__) {
   y[i__] += temp * a[i__ + j * a_dim1];

      }
  }
  jx += *incx;

     }
 } else {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  if (x[jx] != 0.) {
      temp = *alpha * x[jx];
      iy = ky;
      i__2 = *m;
      for (i__ = 1; i__ <= i__2; ++i__) {
   y[iy] += temp * a[i__ + j * a_dim1];
   iy += *incy;

      }
  }
  jx += *incx;

     }
 }
    } else {



 jy = ky;
 if (*incx == 1) {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  temp = 0.;
  i__2 = *m;
  for (i__ = 1; i__ <= i__2; ++i__) {
      temp += a[i__ + j * a_dim1] * x[i__];

  }
  y[jy] += *alpha * temp;
  jy += *incy;

     }
 } else {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  temp = 0.;
  ix = kx;
  i__2 = *m;
  for (i__ = 1; i__ <= i__2; ++i__) {
      temp += a[i__ + j * a_dim1] * x[ix];
      ix += *incx;

  }
  y[jy] += *alpha * temp;
  jy += *incy;

     }
 }
    }

    return 0;



}
