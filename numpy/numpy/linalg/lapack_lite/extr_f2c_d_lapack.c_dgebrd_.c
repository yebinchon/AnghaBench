
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int logical ;
typedef int integer ;
typedef int ftnlen ;
typedef int doublereal ;


 int c__1 ;
 int c__2 ;
 int c__3 ;
 int c_b15 ;
 int c_b151 ;
 int c_n1 ;
 int dlabrd_ (int*,int*,int*,int *,int*,int *,int *,int *,int *,int *,int*,int *,int*) ;
 int max (int,int) ;
 int min (int,int) ;
 int xerbla_ (char*,int*) ;

int dgebrd_(integer *m, integer *n, doublereal *a, integer *
 lda, doublereal *d__, doublereal *e, doublereal *tauq, doublereal *
 taup, doublereal *work, integer *lwork, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4;


    static integer i__, j, nb, nx;
    static doublereal ws;
    extern int dgemm_(char *, char *, integer *, integer *,
     integer *, doublereal *, doublereal *, integer *, doublereal *,
     integer *, doublereal *, doublereal *, integer *);
    static integer nbmin, iinfo, minmn;
    extern int dgebd2_(integer *, integer *, doublereal *,
     integer *, doublereal *, doublereal *, doublereal *, doublereal *,
      doublereal *, integer *), dlabrd_(integer *, integer *, integer *
     , doublereal *, integer *, doublereal *, doublereal *, doublereal
     *, doublereal *, doublereal *, integer *, doublereal *, integer *)
     , xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    static integer ldwrkx, ldwrky, lwkopt;
    static logical lquery;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --d__;
    --e;
    --tauq;
    --taup;
    --work;


    *info = 0;

    i__1 = 1, i__2 = ilaenv_(&c__1, "DGEBRD", " ", m, n, &c_n1, &c_n1, (
     ftnlen)6, (ftnlen)1);
    nb = max(i__1,i__2);
    lwkopt = (*m + *n) * nb;
    work[1] = (doublereal) lwkopt;
    lquery = *lwork == -1;
    if (*m < 0) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*lda < max(1,*m)) {
 *info = -4;
    } else {

 i__1 = max(1,*m);
 if (*lwork < max(i__1,*n) && ! lquery) {
     *info = -10;
 }
    }
    if (*info < 0) {
 i__1 = -(*info);
 xerbla_("DGEBRD", &i__1);
 return 0;
    } else if (lquery) {
 return 0;
    }



    minmn = min(*m,*n);
    if (minmn == 0) {
 work[1] = 1.;
 return 0;
    }

    ws = (doublereal) max(*m,*n);
    ldwrkx = *m;
    ldwrky = *n;

    if (nb > 1 && nb < minmn) {






 i__1 = nb, i__2 = ilaenv_(&c__3, "DGEBRD", " ", m, n, &c_n1, &c_n1, (
  ftnlen)6, (ftnlen)1);
 nx = max(i__1,i__2);



 if (nx < minmn) {
     ws = (doublereal) ((*m + *n) * nb);
     if ((doublereal) (*lwork) < ws) {






  nbmin = ilaenv_(&c__2, "DGEBRD", " ", m, n, &c_n1, &c_n1, (
   ftnlen)6, (ftnlen)1);
  if (*lwork >= (*m + *n) * nbmin) {
      nb = *lwork / (*m + *n);
  } else {
      nb = 1;
      nx = minmn;
  }
     }
 }
    } else {
 nx = minmn;
    }

    i__1 = minmn - nx;
    i__2 = nb;
    for (i__ = 1; i__2 < 0 ? i__ >= i__1 : i__ <= i__1; i__ += i__2) {







 i__3 = *m - i__ + 1;
 i__4 = *n - i__ + 1;
 dlabrd_(&i__3, &i__4, &nb, &a[i__ + i__ * a_dim1], lda, &d__[i__], &e[
  i__], &tauq[i__], &taup[i__], &work[1], &ldwrkx, &work[ldwrkx
  * nb + 1], &ldwrky);






 i__3 = *m - i__ - nb + 1;
 i__4 = *n - i__ - nb + 1;
 dgemm_("No transpose", "Transpose", &i__3, &i__4, &nb, &c_b151, &a[
  i__ + nb + i__ * a_dim1], lda, &work[ldwrkx * nb + nb + 1], &
  ldwrky, &c_b15, &a[i__ + nb + (i__ + nb) * a_dim1], lda);
 i__3 = *m - i__ - nb + 1;
 i__4 = *n - i__ - nb + 1;
 dgemm_("No transpose", "No transpose", &i__3, &i__4, &nb, &c_b151, &
  work[nb + 1], &ldwrkx, &a[i__ + (i__ + nb) * a_dim1], lda, &
  c_b15, &a[i__ + nb + (i__ + nb) * a_dim1], lda);



 if (*m >= *n) {
     i__3 = i__ + nb - 1;
     for (j = i__; j <= i__3; ++j) {
  a[j + j * a_dim1] = d__[j];
  a[j + (j + 1) * a_dim1] = e[j];

     }
 } else {
     i__3 = i__ + nb - 1;
     for (j = i__; j <= i__3; ++j) {
  a[j + j * a_dim1] = d__[j];
  a[j + 1 + j * a_dim1] = e[j];

     }
 }

    }



    i__2 = *m - i__ + 1;
    i__1 = *n - i__ + 1;
    dgebd2_(&i__2, &i__1, &a[i__ + i__ * a_dim1], lda, &d__[i__], &e[i__], &
     tauq[i__], &taup[i__], &work[1], &iinfo);
    work[1] = ws;
    return 0;



}
