
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int logical ;
typedef int integer ;
typedef int ftnlen ;
typedef void* doublereal ;
struct TYPE_5__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;


 int c__1 ;
 int c__2 ;
 int c__3 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;
 int xerbla_ (char*,int*) ;

int zgeqrf_(integer *m, integer *n, doublecomplex *a,
 integer *lda, doublecomplex *tau, doublecomplex *work, integer *lwork,
  integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4;


    static integer i__, k, ib, nb, nx, iws, nbmin, iinfo;
    extern int zgeqr2_(integer *, integer *, doublecomplex *,
      integer *, doublecomplex *, doublecomplex *, integer *), xerbla_(
     char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    extern int zlarfb_(char *, char *, char *, char *,
     integer *, integer *, integer *, doublecomplex *, integer *,
     doublecomplex *, integer *, doublecomplex *, integer *,
     doublecomplex *, integer *);
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
    --work;


    *info = 0;
    nb = ilaenv_(&c__1, "ZGEQRF", " ", m, n, &c_n1, &c_n1, (ftnlen)6, (ftnlen)
     1);
    lwkopt = *n * nb;
    work[1].r = (doublereal) lwkopt, work[1].i = 0.;
    lquery = *lwork == -1;
    if (*m < 0) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*lda < max(1,*m)) {
 *info = -4;
    } else if (*lwork < max(1,*n) && ! lquery) {
 *info = -7;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("ZGEQRF", &i__1);
 return 0;
    } else if (lquery) {
 return 0;
    }



    k = min(*m,*n);
    if (k == 0) {
 work[1].r = 1., work[1].i = 0.;
 return 0;
    }

    nbmin = 2;
    nx = 0;
    iws = *n;
    if (nb > 1 && nb < k) {






 i__1 = 0, i__2 = ilaenv_(&c__3, "ZGEQRF", " ", m, n, &c_n1, &c_n1, (
  ftnlen)6, (ftnlen)1);
 nx = max(i__1,i__2);
 if (nx < k) {



     ldwork = *n;
     iws = ldwork * nb;
     if (*lwork < iws) {






  nb = *lwork / ldwork;

  i__1 = 2, i__2 = ilaenv_(&c__2, "ZGEQRF", " ", m, n, &c_n1, &
   c_n1, (ftnlen)6, (ftnlen)1);
  nbmin = max(i__1,i__2);
     }
 }
    }

    if (nb >= nbmin && nb < k && nx < k) {



 i__1 = k - nx;
 i__2 = nb;
 for (i__ = 1; i__2 < 0 ? i__ >= i__1 : i__ <= i__1; i__ += i__2) {

     i__3 = k - i__ + 1;
     ib = min(i__3,nb);






     i__3 = *m - i__ + 1;
     zgeqr2_(&i__3, &ib, &a[i__ + i__ * a_dim1], lda, &tau[i__], &work[
      1], &iinfo);
     if (i__ + ib <= *n) {






  i__3 = *m - i__ + 1;
  zlarft_("Forward", "Columnwise", &i__3, &ib, &a[i__ + i__ *
   a_dim1], lda, &tau[i__], &work[1], &ldwork);



  i__3 = *m - i__ + 1;
  i__4 = *n - i__ - ib + 1;
  zlarfb_("Left", "Conjugate transpose", "Forward", "Columnwise"
   , &i__3, &i__4, &ib, &a[i__ + i__ * a_dim1], lda, &
   work[1], &ldwork, &a[i__ + (i__ + ib) * a_dim1], lda,
   &work[ib + 1], &ldwork);
     }

 }
    } else {
 i__ = 1;
    }



    if (i__ <= k) {
 i__2 = *m - i__ + 1;
 i__1 = *n - i__ + 1;
 zgeqr2_(&i__2, &i__1, &a[i__ + i__ * a_dim1], lda, &tau[i__], &work[1]
  , &iinfo);
    }

    work[1].r = (doublereal) iws, work[1].i = 0.;
    return 0;



}
