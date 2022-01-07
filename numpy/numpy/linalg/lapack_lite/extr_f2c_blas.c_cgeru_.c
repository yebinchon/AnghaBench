
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int integer ;
struct TYPE_6__ {float r; float i; } ;
typedef TYPE_1__ complex ;


 int max (int,int) ;

int cgeru_(integer *m, integer *n, complex *alpha, complex *
 x, integer *incx, complex *y, integer *incy, complex *a, integer *lda)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4, i__5;
    complex q__1, q__2;


    static integer i__, j, ix, jy, kx, info;
    static complex temp;
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
 xerbla_("CGERU ", &info);
 return 0;
    }



    if (*m == 0 || *n == 0 || alpha->r == 0.f && alpha->i == 0.f) {
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
     i__2 = jy;
     if (y[i__2].r != 0.f || y[i__2].i != 0.f) {
  i__2 = jy;
  q__1.r = alpha->r * y[i__2].r - alpha->i * y[i__2].i, q__1.i =
    alpha->r * y[i__2].i + alpha->i * y[i__2].r;
  temp.r = q__1.r, temp.i = q__1.i;
  i__2 = *m;
  for (i__ = 1; i__ <= i__2; ++i__) {
      i__3 = i__ + j * a_dim1;
      i__4 = i__ + j * a_dim1;
      i__5 = i__;
      q__2.r = x[i__5].r * temp.r - x[i__5].i * temp.i, q__2.i =
        x[i__5].r * temp.i + x[i__5].i * temp.r;
      q__1.r = a[i__4].r + q__2.r, q__1.i = a[i__4].i + q__2.i;
      a[i__3].r = q__1.r, a[i__3].i = q__1.i;

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
     i__2 = jy;
     if (y[i__2].r != 0.f || y[i__2].i != 0.f) {
  i__2 = jy;
  q__1.r = alpha->r * y[i__2].r - alpha->i * y[i__2].i, q__1.i =
    alpha->r * y[i__2].i + alpha->i * y[i__2].r;
  temp.r = q__1.r, temp.i = q__1.i;
  ix = kx;
  i__2 = *m;
  for (i__ = 1; i__ <= i__2; ++i__) {
      i__3 = i__ + j * a_dim1;
      i__4 = i__ + j * a_dim1;
      i__5 = ix;
      q__2.r = x[i__5].r * temp.r - x[i__5].i * temp.i, q__2.i =
        x[i__5].r * temp.i + x[i__5].i * temp.r;
      q__1.r = a[i__4].r + q__2.r, q__1.i = a[i__4].i + q__2.i;
      a[i__3].r = q__1.r, a[i__3].i = q__1.i;
      ix += *incx;

  }
     }
     jy += *incy;

 }
    }

    return 0;



}
