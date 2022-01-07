
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int logical ;
typedef int integer ;
typedef int ftnlen ;
typedef void* doublereal ;
struct TYPE_6__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;
typedef char* address ;


 int c__1 ;
 int c__2 ;
 int c__65 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;
 int s_cat (char*,char**,int*,int*,int ) ;
 int xerbla_ (char*,int*) ;

int zunmqr_(char *side, char *trans, integer *m, integer *n,
 integer *k, doublecomplex *a, integer *lda, doublecomplex *tau,
 doublecomplex *c__, integer *ldc, doublecomplex *work, integer *lwork,
  integer *info)
{

    address a__1[2];
    integer a_dim1, a_offset, c_dim1, c_offset, i__1, i__2, i__3[2], i__4,
     i__5;
    char ch__1[2];


    static integer i__;
    static doublecomplex t[4160] ;
    static integer i1, i2, i3, ib, ic, jc, nb, mi, ni, nq, nw, iws;
    static logical left;
    extern logical lsame_(char *, char *);
    static integer nbmin, iinfo;
    extern int zunm2r_(char *, char *, integer *, integer *,
     integer *, doublecomplex *, integer *, doublecomplex *,
     doublecomplex *, integer *, doublecomplex *, integer *), xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    extern int zlarfb_(char *, char *, char *, char *,
     integer *, integer *, integer *, doublecomplex *, integer *,
     doublecomplex *, integer *, doublecomplex *, integer *,
     doublecomplex *, integer *);
    static logical notran;
    static integer ldwork;
    extern int zlarft_(char *, char *, integer *, integer *,
     doublecomplex *, integer *, doublecomplex *, doublecomplex *,
     integer *);
    static integer lwkopt;
    static logical lquery;
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
    lquery = *lwork == -1;



    if (left) {
 nq = *m;
 nw = *n;
    } else {
 nq = *n;
 nw = *m;
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
    } else if (*lwork < max(1,nw) && ! lquery) {
 *info = -12;
    }

    if (*info == 0) {
 i__3[0] = 1, a__1[0] = side;
 i__3[1] = 1, a__1[1] = trans;
 s_cat(ch__1, a__1, i__3, &c__2, (ftnlen)2);
 i__1 = 64, i__2 = ilaenv_(&c__1, "ZUNMQR", ch__1, m, n, k, &c_n1, (
  ftnlen)6, (ftnlen)2);
 nb = min(i__1,i__2);
 lwkopt = max(1,nw) * nb;
 work[1].r = (doublereal) lwkopt, work[1].i = 0.;
    }

    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("ZUNMQR", &i__1);
 return 0;
    } else if (lquery) {
 return 0;
    }



    if (*m == 0 || *n == 0 || *k == 0) {
 work[1].r = 1., work[1].i = 0.;
 return 0;
    }

    nbmin = 2;
    ldwork = nw;
    if (nb > 1 && nb < *k) {
 iws = nw * nb;
 if (*lwork < iws) {
     nb = *lwork / ldwork;




     i__3[0] = 1, a__1[0] = side;
     i__3[1] = 1, a__1[1] = trans;
     s_cat(ch__1, a__1, i__3, &c__2, (ftnlen)2);
     i__1 = 2, i__2 = ilaenv_(&c__2, "ZUNMQR", ch__1, m, n, k, &c_n1, (
      ftnlen)6, (ftnlen)2);
     nbmin = max(i__1,i__2);
 }
    } else {
 iws = nw;
    }

    if (nb < nbmin || nb >= *k) {



 zunm2r_(side, trans, m, n, k, &a[a_offset], lda, &tau[1], &c__[
  c_offset], ldc, &work[1], &iinfo);
    } else {



 if (left && ! notran || ! left && notran) {
     i1 = 1;
     i2 = *k;
     i3 = nb;
 } else {
     i1 = (*k - 1) / nb * nb + 1;
     i2 = 1;
     i3 = -nb;
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

     i__4 = nb, i__5 = *k - i__ + 1;
     ib = min(i__4,i__5);






     i__4 = nq - i__ + 1;
     zlarft_("Forward", "Columnwise", &i__4, &ib, &a[i__ + i__ *
      a_dim1], lda, &tau[i__], t, &c__65)
      ;
     if (left) {



  mi = *m - i__ + 1;
  ic = i__;
     } else {



  ni = *n - i__ + 1;
  jc = i__;
     }



     zlarfb_(side, trans, "Forward", "Columnwise", &mi, &ni, &ib, &a[
      i__ + i__ * a_dim1], lda, t, &c__65, &c__[ic + jc *
      c_dim1], ldc, &work[1], &ldwork);

 }
    }
    work[1].r = (doublereal) lwkopt, work[1].i = 0.;
    return 0;



}
