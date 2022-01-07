
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int logical ;
typedef int integer ;
typedef int ftnlen ;
typedef char* address ;


 int c__1 ;
 int c__2 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;
 int s_cat (char*,char**,int*,int *,int ) ;

int sormbr_(char *vect, char *side, char *trans, integer *m,
 integer *n, integer *k, real *a, integer *lda, real *tau, real *c__,
 integer *ldc, real *work, integer *lwork, integer *info)
{

    address a__1[2];
    integer a_dim1, a_offset, c_dim1, c_offset, i__1, i__2, i__3[2];
    char ch__1[2];


    static integer i1, i2, nb, mi, ni, nq, nw;
    static logical left;
    extern logical lsame_(char *, char *);
    static integer iinfo;
    extern int xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    static logical notran, applyq;
    static char transt[1];
    extern int sormlq_(char *, char *, integer *, integer *,
     integer *, real *, integer *, real *, real *, integer *, real *,
     integer *, integer *);
    static integer lwkopt;
    static logical lquery;
    extern int sormqr_(char *, char *, integer *, integer *,
     integer *, real *, integer *, real *, real *, integer *, real *,
     integer *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    c_dim1 = *ldc;
    c_offset = 1 + c_dim1;
    c__ -= c_offset;
    --work;


    *info = 0;
    applyq = lsame_(vect, "Q");
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
    if (! applyq && ! lsame_(vect, "P")) {
 *info = -1;
    } else if (! left && ! lsame_(side, "R")) {
 *info = -2;
    } else if (! notran && ! lsame_(trans, "T")) {
 *info = -3;
    } else if (*m < 0) {
 *info = -4;
    } else if (*n < 0) {
 *info = -5;
    } else if (*k < 0) {
 *info = -6;
    } else {

 i__1 = 1, i__2 = min(nq,*k);
 if (applyq && *lda < max(1,nq) || ! applyq && *lda < max(i__1,i__2)) {
     *info = -8;
 } else if (*ldc < max(1,*m)) {
     *info = -11;
 } else if (*lwork < max(1,nw) && ! lquery) {
     *info = -13;
 }
    }

    if (*info == 0) {
 if (applyq) {
     if (left) {

  i__3[0] = 1, a__1[0] = side;
  i__3[1] = 1, a__1[1] = trans;
  s_cat(ch__1, a__1, i__3, &c__2, (ftnlen)2);
  i__1 = *m - 1;
  i__2 = *m - 1;
  nb = ilaenv_(&c__1, "SORMQR", ch__1, &i__1, n, &i__2, &c_n1, (
   ftnlen)6, (ftnlen)2);
     } else {

  i__3[0] = 1, a__1[0] = side;
  i__3[1] = 1, a__1[1] = trans;
  s_cat(ch__1, a__1, i__3, &c__2, (ftnlen)2);
  i__1 = *n - 1;
  i__2 = *n - 1;
  nb = ilaenv_(&c__1, "SORMQR", ch__1, m, &i__1, &i__2, &c_n1, (
   ftnlen)6, (ftnlen)2);
     }
 } else {
     if (left) {

  i__3[0] = 1, a__1[0] = side;
  i__3[1] = 1, a__1[1] = trans;
  s_cat(ch__1, a__1, i__3, &c__2, (ftnlen)2);
  i__1 = *m - 1;
  i__2 = *m - 1;
  nb = ilaenv_(&c__1, "SORMLQ", ch__1, &i__1, n, &i__2, &c_n1, (
   ftnlen)6, (ftnlen)2);
     } else {

  i__3[0] = 1, a__1[0] = side;
  i__3[1] = 1, a__1[1] = trans;
  s_cat(ch__1, a__1, i__3, &c__2, (ftnlen)2);
  i__1 = *n - 1;
  i__2 = *n - 1;
  nb = ilaenv_(&c__1, "SORMLQ", ch__1, m, &i__1, &i__2, &c_n1, (
   ftnlen)6, (ftnlen)2);
     }
 }
 lwkopt = max(1,nw) * nb;
 work[1] = (real) lwkopt;
    }

    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SORMBR", &i__1);
 return 0;
    } else if (lquery) {
 return 0;
    }



    work[1] = 1.f;
    if (*m == 0 || *n == 0) {
 return 0;
    }

    if (applyq) {



 if (nq >= *k) {



     sormqr_(side, trans, m, n, k, &a[a_offset], lda, &tau[1], &c__[
      c_offset], ldc, &work[1], lwork, &iinfo);
 } else if (nq > 1) {



     if (left) {
  mi = *m - 1;
  ni = *n;
  i1 = 2;
  i2 = 1;
     } else {
  mi = *m;
  ni = *n - 1;
  i1 = 1;
  i2 = 2;
     }
     i__1 = nq - 1;
     sormqr_(side, trans, &mi, &ni, &i__1, &a[a_dim1 + 2], lda, &tau[1]
      , &c__[i1 + i2 * c_dim1], ldc, &work[1], lwork, &iinfo);
 }
    } else {



 if (notran) {
     *(unsigned char *)transt = 'T';
 } else {
     *(unsigned char *)transt = 'N';
 }
 if (nq > *k) {



     sormlq_(side, transt, m, n, k, &a[a_offset], lda, &tau[1], &c__[
      c_offset], ldc, &work[1], lwork, &iinfo);
 } else if (nq > 1) {



     if (left) {
  mi = *m - 1;
  ni = *n;
  i1 = 2;
  i2 = 1;
     } else {
  mi = *m;
  ni = *n - 1;
  i1 = 1;
  i2 = 2;
     }
     i__1 = nq - 1;
     sormlq_(side, transt, &mi, &ni, &i__1, &a[(a_dim1 << 1) + 1], lda,
       &tau[1], &c__[i1 + i2 * c_dim1], ldc, &work[1], lwork, &
      iinfo);
 }
    }
    work[1] = (real) lwkopt;
    return 0;



}
