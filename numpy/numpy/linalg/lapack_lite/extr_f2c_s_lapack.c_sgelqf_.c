
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int logical ;
typedef int integer ;
typedef int ftnlen ;


 int c__1 ;
 int c__2 ;
 int c__3 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;
 int slarfb_ (char*,char*,char*,char*,int*,int*,int*,int *,int*,int *,int*,int *,int*,int *,int*) ;
 int xerbla_ (char*,int*) ;

int sgelqf_(integer *m, integer *n, real *a, integer *lda,
 real *tau, real *work, integer *lwork, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4;


    static integer i__, k, ib, nb, nx, iws, nbmin, iinfo;
    extern int sgelq2_(integer *, integer *, real *, integer
     *, real *, real *, integer *), slarfb_(char *, char *, char *,
     char *, integer *, integer *, integer *, real *, integer *, real *
     , integer *, real *, integer *, real *, integer *), xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    extern int slarft_(char *, char *, integer *, integer *,
     real *, integer *, real *, real *, integer *);
    static integer ldwork, lwkopt;
    static logical lquery;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;


    *info = 0;
    nb = ilaenv_(&c__1, "SGELQF", " ", m, n, &c_n1, &c_n1, (ftnlen)6, (ftnlen)
     1);
    lwkopt = *m * nb;
    work[1] = (real) lwkopt;
    lquery = *lwork == -1;
    if (*m < 0) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*lda < max(1,*m)) {
 *info = -4;
    } else if (*lwork < max(1,*m) && ! lquery) {
 *info = -7;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SGELQF", &i__1);
 return 0;
    } else if (lquery) {
 return 0;
    }



    k = min(*m,*n);
    if (k == 0) {
 work[1] = 1.f;
 return 0;
    }

    nbmin = 2;
    nx = 0;
    iws = *m;
    if (nb > 1 && nb < k) {






 i__1 = 0, i__2 = ilaenv_(&c__3, "SGELQF", " ", m, n, &c_n1, &c_n1, (
  ftnlen)6, (ftnlen)1);
 nx = max(i__1,i__2);
 if (nx < k) {



     ldwork = *m;
     iws = ldwork * nb;
     if (*lwork < iws) {






  nb = *lwork / ldwork;

  i__1 = 2, i__2 = ilaenv_(&c__2, "SGELQF", " ", m, n, &c_n1, &
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






     i__3 = *n - i__ + 1;
     sgelq2_(&ib, &i__3, &a[i__ + i__ * a_dim1], lda, &tau[i__], &work[
      1], &iinfo);
     if (i__ + ib <= *m) {






  i__3 = *n - i__ + 1;
  slarft_("Forward", "Rowwise", &i__3, &ib, &a[i__ + i__ *
   a_dim1], lda, &tau[i__], &work[1], &ldwork);



  i__3 = *m - i__ - ib + 1;
  i__4 = *n - i__ + 1;
  slarfb_("Right", "No transpose", "Forward", "Rowwise", &i__3,
   &i__4, &ib, &a[i__ + i__ * a_dim1], lda, &work[1], &
   ldwork, &a[i__ + ib + i__ * a_dim1], lda, &work[ib +
   1], &ldwork);
     }

 }
    } else {
 i__ = 1;
    }



    if (i__ <= k) {
 i__2 = *m - i__ + 1;
 i__1 = *n - i__ + 1;
 sgelq2_(&i__2, &i__1, &a[i__ + i__ * a_dim1], lda, &tau[i__], &work[1]
  , &iinfo);
    }

    work[1] = (real) iws;
    return 0;



}
