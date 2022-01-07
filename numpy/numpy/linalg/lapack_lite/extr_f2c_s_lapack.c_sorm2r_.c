
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef void* logical ;
typedef int integer ;


 int c__1 ;
 int max (int,int) ;
 int xerbla_ (char*,int*) ;

int sorm2r_(char *side, char *trans, integer *m, integer *n,
 integer *k, real *a, integer *lda, real *tau, real *c__, integer *ldc,
  real *work, integer *info)
{

    integer a_dim1, a_offset, c_dim1, c_offset, i__1, i__2;


    static integer i__, i1, i2, i3, ic, jc, mi, ni, nq;
    static real aii;
    static logical left;
    extern logical lsame_(char *, char *);
    extern int slarf_(char *, integer *, integer *, real *,
     integer *, real *, real *, integer *, real *), xerbla_(
     char *, integer *);
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
    } else if (! notran && ! lsame_(trans, "T")) {
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
 xerbla_("SORM2R", &i__1);
 return 0;
    }



    if (*m == 0 || *n == 0 || *k == 0) {
 return 0;
    }

    if (left && ! notran || ! left && notran) {
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
 jc = 1;
    } else {
 mi = *m;
 ic = 1;
    }

    i__1 = i2;
    i__2 = i3;
    for (i__ = i1; i__2 < 0 ? i__ >= i__1 : i__ <= i__1; i__ += i__2) {
 if (left) {



     mi = *m - i__ + 1;
     ic = i__;
 } else {



     ni = *n - i__ + 1;
     jc = i__;
 }



 aii = a[i__ + i__ * a_dim1];
 a[i__ + i__ * a_dim1] = 1.f;
 slarf_(side, &mi, &ni, &a[i__ + i__ * a_dim1], &c__1, &tau[i__], &c__[
  ic + jc * c_dim1], ldc, &work[1]);
 a[i__ + i__ * a_dim1] = aii;

    }
    return 0;



}
