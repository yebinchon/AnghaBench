
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int logical ;
typedef int integer ;
typedef int ftnlen ;
typedef int doublereal ;
typedef char* address ;


 int c__1 ;
 int c__2 ;
 int c__65 ;
 int c_n1 ;
 int dlarfb_ (char*,char*,char*,char*,int*,int*,int*,int *,int*,int *,int *,int *,int*,int *,int*) ;
 int dlarft_ (char*,char*,int*,int*,int *,int*,int *,int *,int *) ;
 int max (int,int) ;
 int min (int,int) ;
 int s_cat (char*,char**,int*,int*,int ) ;
 int xerbla_ (char*,int*) ;

int dormlq_(char *side, char *trans, integer *m, integer *n,
 integer *k, doublereal *a, integer *lda, doublereal *tau, doublereal *
 c__, integer *ldc, doublereal *work, integer *lwork, integer *info)
{

    address a__1[2];
    integer a_dim1, a_offset, c_dim1, c_offset, i__1, i__2, i__3[2], i__4,
     i__5;
    char ch__1[2];


    static integer i__;
    static doublereal t[4160] ;
    static integer i1, i2, i3, ib, ic, jc, nb, mi, ni, nq, nw, iws;
    static logical left;
    extern logical lsame_(char *, char *);
    static integer nbmin, iinfo;
    extern int dorml2_(char *, char *, integer *, integer *,
     integer *, doublereal *, integer *, doublereal *, doublereal *,
     integer *, doublereal *, integer *), dlarfb_(char
     *, char *, char *, char *, integer *, integer *, integer *,
     doublereal *, integer *, doublereal *, integer *, doublereal *,
     integer *, doublereal *, integer *), dlarft_(char *, char *, integer *, integer *, doublereal
     *, integer *, doublereal *, doublereal *, integer *), xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    static logical notran;
    static integer ldwork;
    static char transt[1];
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
    } else if (! notran && ! lsame_(trans, "T")) {
 *info = -2;
    } else if (*m < 0) {
 *info = -3;
    } else if (*n < 0) {
 *info = -4;
    } else if (*k < 0 || *k > nq) {
 *info = -5;
    } else if (*lda < max(1,*k)) {
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
 i__1 = 64, i__2 = ilaenv_(&c__1, "DORMLQ", ch__1, m, n, k, &c_n1, (
  ftnlen)6, (ftnlen)2);
 nb = min(i__1,i__2);
 lwkopt = max(1,nw) * nb;
 work[1] = (doublereal) lwkopt;
    }

    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DORMLQ", &i__1);
 return 0;
    } else if (lquery) {
 return 0;
    }



    if (*m == 0 || *n == 0 || *k == 0) {
 work[1] = 1.;
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
     i__1 = 2, i__2 = ilaenv_(&c__2, "DORMLQ", ch__1, m, n, k, &c_n1, (
      ftnlen)6, (ftnlen)2);
     nbmin = max(i__1,i__2);
 }
    } else {
 iws = nw;
    }

    if (nb < nbmin || nb >= *k) {



 dorml2_(side, trans, m, n, k, &a[a_offset], lda, &tau[1], &c__[
  c_offset], ldc, &work[1], &iinfo);
    } else {



 if (left && notran || ! left && ! notran) {
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

 if (notran) {
     *(unsigned char *)transt = 'T';
 } else {
     *(unsigned char *)transt = 'N';
 }

 i__1 = i2;
 i__2 = i3;
 for (i__ = i1; i__2 < 0 ? i__ >= i__1 : i__ <= i__1; i__ += i__2) {

     i__4 = nb, i__5 = *k - i__ + 1;
     ib = min(i__4,i__5);






     i__4 = nq - i__ + 1;
     dlarft_("Forward", "Rowwise", &i__4, &ib, &a[i__ + i__ * a_dim1],
      lda, &tau[i__], t, &c__65);
     if (left) {



  mi = *m - i__ + 1;
  ic = i__;
     } else {



  ni = *n - i__ + 1;
  jc = i__;
     }



     dlarfb_(side, transt, "Forward", "Rowwise", &mi, &ni, &ib, &a[i__
      + i__ * a_dim1], lda, t, &c__65, &c__[ic + jc * c_dim1],
      ldc, &work[1], &ldwork);

 }
    }
    work[1] = (doublereal) lwkopt;
    return 0;



}
