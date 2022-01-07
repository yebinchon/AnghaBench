
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef void* logical ;
typedef int integer ;
struct TYPE_8__ {float r; float i; } ;
typedef TYPE_1__ complex ;


 int c__1 ;
 int max (int,int) ;
 int r_cnjg (TYPE_1__*,TYPE_1__*) ;

int cunm2l_(char *side, char *trans, integer *m, integer *n,
 integer *k, complex *a, integer *lda, complex *tau, complex *c__,
 integer *ldc, complex *work, integer *info)
{

    integer a_dim1, a_offset, c_dim1, c_offset, i__1, i__2, i__3;
    complex q__1;


    static integer i__, i1, i2, i3, mi, ni, nq;
    static complex aii;
    static logical left;
    static complex taui;
    extern int clarf_(char *, integer *, integer *, complex *
     , integer *, complex *, complex *, integer *, complex *);
    extern logical lsame_(char *, char *);
    extern int xerbla_(char *, integer *);
    static logical notran;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    c_dim1 = *ldc;
    c_offset = 1 + c_dim1;
    c__ -= c_offset;
    --work;


    *info = 0;
    left = lsame_(side, "L");
    notran = lsame_(trans, "N");



    if (left) {
 nq = *m;
    } else {
 nq = *n;
    }
    if (! left && ! lsame_(side, "R")) {
 *info = -1;
    } else if (! notran && ! lsame_(trans, "C")) {
 *info = -2;
    } else if (*m < 0) {
 *info = -3;
    } else if (*n < 0) {
 *info = -4;
    } else if (*k < 0 || *k > nq) {
 *info = -5;
    } else if (*lda < max(1,nq)) {
 *info = -7;
    } else if (*ldc < max(1,*m)) {
 *info = -10;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("CUNM2L", &i__1);
 return 0;
    }



    if (*m == 0 || *n == 0 || *k == 0) {
 return 0;
    }

    if (left && notran || ! left && ! notran) {
 i1 = 1;
 i2 = *k;
 i3 = 1;
    } else {
 i1 = *k;
 i2 = 1;
 i3 = -1;
    }

    if (left) {
 ni = *n;
    } else {
 mi = *m;
    }

    i__1 = i2;
    i__2 = i3;
    for (i__ = i1; i__2 < 0 ? i__ >= i__1 : i__ <= i__1; i__ += i__2) {
 if (left) {



     mi = *m - *k + i__;
 } else {



     ni = *n - *k + i__;
 }



 if (notran) {
     i__3 = i__;
     taui.r = tau[i__3].r, taui.i = tau[i__3].i;
 } else {
     r_cnjg(&q__1, &tau[i__]);
     taui.r = q__1.r, taui.i = q__1.i;
 }
 i__3 = nq - *k + i__ + i__ * a_dim1;
 aii.r = a[i__3].r, aii.i = a[i__3].i;
 i__3 = nq - *k + i__ + i__ * a_dim1;
 a[i__3].r = 1.f, a[i__3].i = 0.f;
 clarf_(side, &mi, &ni, &a[i__ * a_dim1 + 1], &c__1, &taui, &c__[
  c_offset], ldc, &work[1]);
 i__3 = nq - *k + i__ + i__ * a_dim1;
 a[i__3].r = aii.r, a[i__3].i = aii.i;

    }
    return 0;



}
