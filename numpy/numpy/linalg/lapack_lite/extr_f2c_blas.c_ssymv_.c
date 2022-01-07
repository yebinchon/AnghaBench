
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef void* logical ;
typedef int integer ;


 int max (int,int) ;

int ssymv_(char *uplo, integer *n, real *alpha, real *a,
 integer *lda, real *x, integer *incx, real *beta, real *y, integer *
 incy)
{

    integer a_dim1, a_offset, i__1, i__2;


    static integer i__, j, ix, iy, jx, jy, kx, ky, info;
    static real temp1, temp2;
    extern logical lsame_(char *, char *);
    extern int xerbla_(char *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --x;
    --y;


    info = 0;
    if (! lsame_(uplo, "U") && ! lsame_(uplo, "L")) {
 info = 1;
    } else if (*n < 0) {
 info = 2;
    } else if (*lda < max(1,*n)) {
 info = 5;
    } else if (*incx == 0) {
 info = 7;
    } else if (*incy == 0) {
 info = 10;
    }
    if (info != 0) {
 xerbla_("SSYMV ", &info);
 return 0;
    }



    if (*n == 0 || *alpha == 0.f && *beta == 1.f) {
 return 0;
    }



    if (*incx > 0) {
 kx = 1;
    } else {
 kx = 1 - (*n - 1) * *incx;
    }
    if (*incy > 0) {
 ky = 1;
    } else {
 ky = 1 - (*n - 1) * *incy;
    }
    if (*beta != 1.f) {
 if (*incy == 1) {
     if (*beta == 0.f) {
  i__1 = *n;
  for (i__ = 1; i__ <= i__1; ++i__) {
      y[i__] = 0.f;

  }
     } else {
  i__1 = *n;
  for (i__ = 1; i__ <= i__1; ++i__) {
      y[i__] = *beta * y[i__];

  }
     }
 } else {
     iy = ky;
     if (*beta == 0.f) {
  i__1 = *n;
  for (i__ = 1; i__ <= i__1; ++i__) {
      y[iy] = 0.f;
      iy += *incy;

  }
     } else {
  i__1 = *n;
  for (i__ = 1; i__ <= i__1; ++i__) {
      y[iy] = *beta * y[iy];
      iy += *incy;

  }
     }
 }
    }
    if (*alpha == 0.f) {
 return 0;
    }
    if (lsame_(uplo, "U")) {



 if (*incx == 1 && *incy == 1) {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  temp1 = *alpha * x[j];
  temp2 = 0.f;
  i__2 = j - 1;
  for (i__ = 1; i__ <= i__2; ++i__) {
      y[i__] += temp1 * a[i__ + j * a_dim1];
      temp2 += a[i__ + j * a_dim1] * x[i__];

  }
  y[j] = y[j] + temp1 * a[j + j * a_dim1] + *alpha * temp2;

     }
 } else {
     jx = kx;
     jy = ky;
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  temp1 = *alpha * x[jx];
  temp2 = 0.f;
  ix = kx;
  iy = ky;
  i__2 = j - 1;
  for (i__ = 1; i__ <= i__2; ++i__) {
      y[iy] += temp1 * a[i__ + j * a_dim1];
      temp2 += a[i__ + j * a_dim1] * x[ix];
      ix += *incx;
      iy += *incy;

  }
  y[jy] = y[jy] + temp1 * a[j + j * a_dim1] + *alpha * temp2;
  jx += *incx;
  jy += *incy;

     }
 }
    } else {



 if (*incx == 1 && *incy == 1) {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  temp1 = *alpha * x[j];
  temp2 = 0.f;
  y[j] += temp1 * a[j + j * a_dim1];
  i__2 = *n;
  for (i__ = j + 1; i__ <= i__2; ++i__) {
      y[i__] += temp1 * a[i__ + j * a_dim1];
      temp2 += a[i__ + j * a_dim1] * x[i__];

  }
  y[j] += *alpha * temp2;

     }
 } else {
     jx = kx;
     jy = ky;
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  temp1 = *alpha * x[jx];
  temp2 = 0.f;
  y[jy] += temp1 * a[j + j * a_dim1];
  ix = jx;
  iy = jy;
  i__2 = *n;
  for (i__ = j + 1; i__ <= i__2; ++i__) {
      ix += *incx;
      iy += *incy;
      y[iy] += temp1 * a[i__ + j * a_dim1];
      temp2 += a[i__ + j * a_dim1] * x[ix];

  }
  y[jy] += *alpha * temp2;
  jx += *incx;
  jy += *incy;

     }
 }
    }

    return 0;



}
