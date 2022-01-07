
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef void* logical ;
typedef int integer ;


 int max (int,int) ;

int ssyr2_(char *uplo, integer *n, real *alpha, real *x,
 integer *incx, real *y, integer *incy, real *a, integer *lda)
{

    integer a_dim1, a_offset, i__1, i__2;


    static integer i__, j, ix, iy, jx, jy, kx, ky, info;
    static real temp1, temp2;
    extern logical lsame_(char *, char *);
    extern int xerbla_(char *, integer *);
    --x;
    --y;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    info = 0;
    if (! lsame_(uplo, "U") && ! lsame_(uplo, "L")) {
 info = 1;
    } else if (*n < 0) {
 info = 2;
    } else if (*incx == 0) {
 info = 5;
    } else if (*incy == 0) {
 info = 7;
    } else if (*lda < max(1,*n)) {
 info = 9;
    }
    if (info != 0) {
 xerbla_("SSYR2 ", &info);
 return 0;
    }



    if (*n == 0 || *alpha == 0.f) {
 return 0;
    }






    if (*incx != 1 || *incy != 1) {
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
 jx = kx;
 jy = ky;
    }







    if (lsame_(uplo, "U")) {



 if (*incx == 1 && *incy == 1) {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  if (x[j] != 0.f || y[j] != 0.f) {
      temp1 = *alpha * y[j];
      temp2 = *alpha * x[j];
      i__2 = j;
      for (i__ = 1; i__ <= i__2; ++i__) {
   a[i__ + j * a_dim1] = a[i__ + j * a_dim1] + x[i__] *
    temp1 + y[i__] * temp2;

      }
  }

     }
 } else {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  if (x[jx] != 0.f || y[jy] != 0.f) {
      temp1 = *alpha * y[jy];
      temp2 = *alpha * x[jx];
      ix = kx;
      iy = ky;
      i__2 = j;
      for (i__ = 1; i__ <= i__2; ++i__) {
   a[i__ + j * a_dim1] = a[i__ + j * a_dim1] + x[ix] *
    temp1 + y[iy] * temp2;
   ix += *incx;
   iy += *incy;

      }
  }
  jx += *incx;
  jy += *incy;

     }
 }
    } else {



 if (*incx == 1 && *incy == 1) {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  if (x[j] != 0.f || y[j] != 0.f) {
      temp1 = *alpha * y[j];
      temp2 = *alpha * x[j];
      i__2 = *n;
      for (i__ = j; i__ <= i__2; ++i__) {
   a[i__ + j * a_dim1] = a[i__ + j * a_dim1] + x[i__] *
    temp1 + y[i__] * temp2;

      }
  }

     }
 } else {
     i__1 = *n;
     for (j = 1; j <= i__1; ++j) {
  if (x[jx] != 0.f || y[jy] != 0.f) {
      temp1 = *alpha * y[jy];
      temp2 = *alpha * x[jx];
      ix = jx;
      iy = jy;
      i__2 = *n;
      for (i__ = j; i__ <= i__2; ++i__) {
   a[i__ + j * a_dim1] = a[i__ + j * a_dim1] + x[ix] *
    temp1 + y[iy] * temp2;
   ix += *incx;
   iy += *incy;

      }
  }
  jx += *incx;
  jy += *incy;

     }
 }
    }

    return 0;



}
