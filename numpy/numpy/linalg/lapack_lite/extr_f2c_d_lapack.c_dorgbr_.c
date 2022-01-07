
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int logical ;
typedef int integer ;
typedef int ftnlen ;
typedef int doublereal ;


 int c__1 ;
 int c_n1 ;
 int dorgqr_ (int*,int*,int*,int *,int*,int *,int *,int*,int*) ;
 int max (int,int) ;
 int min (int,int) ;

int dorgbr_(char *vect, integer *m, integer *n, integer *k,
 doublereal *a, integer *lda, doublereal *tau, doublereal *work,
 integer *lwork, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;


    static integer i__, j, nb, mn;
    extern logical lsame_(char *, char *);
    static integer iinfo;
    static logical wantq;
    extern int xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    extern int dorglq_(integer *, integer *, integer *,
     doublereal *, integer *, doublereal *, doublereal *, integer *,
     integer *), dorgqr_(integer *, integer *, integer *, doublereal *,
      integer *, doublereal *, doublereal *, integer *, integer *);
    static integer lwkopt;
    static logical lquery;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;


    *info = 0;
    wantq = lsame_(vect, "Q");
    mn = min(*m,*n);
    lquery = *lwork == -1;
    if (! wantq && ! lsame_(vect, "P")) {
 *info = -1;
    } else if (*m < 0) {
 *info = -2;
    } else if (*n < 0 || wantq && (*n > *m || *n < min(*m,*k)) || ! wantq && (
     *m > *n || *m < min(*n,*k))) {
 *info = -3;
    } else if (*k < 0) {
 *info = -4;
    } else if (*lda < max(1,*m)) {
 *info = -6;
    } else if (*lwork < max(1,mn) && ! lquery) {
 *info = -9;
    }

    if (*info == 0) {
 if (wantq) {
     nb = ilaenv_(&c__1, "DORGQR", " ", m, n, k, &c_n1, (ftnlen)6, (
      ftnlen)1);
 } else {
     nb = ilaenv_(&c__1, "DORGLQ", " ", m, n, k, &c_n1, (ftnlen)6, (
      ftnlen)1);
 }
 lwkopt = max(1,mn) * nb;
 work[1] = (doublereal) lwkopt;
    }

    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DORGBR", &i__1);
 return 0;
    } else if (lquery) {
 return 0;
    }



    if (*m == 0 || *n == 0) {
 work[1] = 1.;
 return 0;
    }

    if (wantq) {






 if (*m >= *k) {



     dorgqr_(m, n, k, &a[a_offset], lda, &tau[1], &work[1], lwork, &
      iinfo);

 } else {
     for (j = *m; j >= 2; --j) {
  a[j * a_dim1 + 1] = 0.;
  i__1 = *m;
  for (i__ = j + 1; i__ <= i__1; ++i__) {
      a[i__ + j * a_dim1] = a[i__ + (j - 1) * a_dim1];

  }

     }
     a[a_dim1 + 1] = 1.;
     i__1 = *m;
     for (i__ = 2; i__ <= i__1; ++i__) {
  a[i__ + a_dim1] = 0.;

     }
     if (*m > 1) {



  i__1 = *m - 1;
  i__2 = *m - 1;
  i__3 = *m - 1;
  dorgqr_(&i__1, &i__2, &i__3, &a[(a_dim1 << 1) + 2], lda, &tau[
   1], &work[1], lwork, &iinfo);
     }
 }
    } else {






 if (*k < *n) {



     dorglq_(m, n, k, &a[a_offset], lda, &tau[1], &work[1], lwork, &
      iinfo);

 } else {
     a[a_dim1 + 1] = 1.;
     i__1 = *n;
     for (i__ = 2; i__ <= i__1; ++i__) {
  a[i__ + a_dim1] = 0.;

     }
     i__1 = *n;
     for (j = 2; j <= i__1; ++j) {
  for (i__ = j - 1; i__ >= 2; --i__) {
      a[i__ + j * a_dim1] = a[i__ - 1 + j * a_dim1];

  }
  a[j * a_dim1 + 1] = 0.;

     }
     if (*n > 1) {



  i__1 = *n - 1;
  i__2 = *n - 1;
  i__3 = *n - 1;
  dorglq_(&i__1, &i__2, &i__3, &a[(a_dim1 << 1) + 2], lda, &tau[
   1], &work[1], lwork, &iinfo);
     }
 }
    }
    work[1] = (doublereal) lwkopt;
    return 0;



}
