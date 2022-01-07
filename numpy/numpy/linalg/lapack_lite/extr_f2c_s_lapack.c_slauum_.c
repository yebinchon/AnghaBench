
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef scalar_t__ logical ;
typedef int integer ;
typedef int ftnlen ;


 int c__1 ;
 int c_b15 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;
 int slauu2_ (char*,int*,int *,int*,int*) ;
 int ssyrk_ (char*,char*,int*,int*,int *,int *,int*,int *,int *,int*) ;
 int xerbla_ (char*,int*) ;

int slauum_(char *uplo, integer *n, real *a, integer *lda,
 integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4;


    static integer i__, ib, nb;
    extern logical lsame_(char *, char *);
    extern int sgemm_(char *, char *, integer *, integer *,
     integer *, real *, real *, integer *, real *, integer *, real *,
     real *, integer *);
    static logical upper;
    extern int strmm_(char *, char *, char *, char *,
     integer *, integer *, real *, real *, integer *, real *, integer *
     ), ssyrk_(char *, char *, integer
     *, integer *, real *, real *, integer *, real *, real *, integer *
     ), slauu2_(char *, integer *, real *, integer *,
     integer *), xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    *info = 0;
    upper = lsame_(uplo, "U");
    if (! upper && ! lsame_(uplo, "L")) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*lda < max(1,*n)) {
 *info = -4;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SLAUUM", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }



    nb = ilaenv_(&c__1, "SLAUUM", uplo, n, &c_n1, &c_n1, &c_n1, (ftnlen)6, (
     ftnlen)1);

    if (nb <= 1 || nb >= *n) {



 slauu2_(uplo, n, &a[a_offset], lda, info);
    } else {



 if (upper) {



     i__1 = *n;
     i__2 = nb;
     for (i__ = 1; i__2 < 0 ? i__ >= i__1 : i__ <= i__1; i__ += i__2) {

  i__3 = nb, i__4 = *n - i__ + 1;
  ib = min(i__3,i__4);
  i__3 = i__ - 1;
  strmm_("Right", "Upper", "Transpose", "Non-unit", &i__3, &ib,
   &c_b15, &a[i__ + i__ * a_dim1], lda, &a[i__ * a_dim1
   + 1], lda)
   ;
  slauu2_("Upper", &ib, &a[i__ + i__ * a_dim1], lda, info);
  if (i__ + ib <= *n) {
      i__3 = i__ - 1;
      i__4 = *n - i__ - ib + 1;
      sgemm_("No transpose", "Transpose", &i__3, &ib, &i__4, &
       c_b15, &a[(i__ + ib) * a_dim1 + 1], lda, &a[i__ +
       (i__ + ib) * a_dim1], lda, &c_b15, &a[i__ *
       a_dim1 + 1], lda);
      i__3 = *n - i__ - ib + 1;
      ssyrk_("Upper", "No transpose", &ib, &i__3, &c_b15, &a[
       i__ + (i__ + ib) * a_dim1], lda, &c_b15, &a[i__ +
       i__ * a_dim1], lda);
  }

     }
 } else {



     i__2 = *n;
     i__1 = nb;
     for (i__ = 1; i__1 < 0 ? i__ >= i__2 : i__ <= i__2; i__ += i__1) {

  i__3 = nb, i__4 = *n - i__ + 1;
  ib = min(i__3,i__4);
  i__3 = i__ - 1;
  strmm_("Left", "Lower", "Transpose", "Non-unit", &ib, &i__3, &
   c_b15, &a[i__ + i__ * a_dim1], lda, &a[i__ + a_dim1],
   lda);
  slauu2_("Lower", &ib, &a[i__ + i__ * a_dim1], lda, info);
  if (i__ + ib <= *n) {
      i__3 = i__ - 1;
      i__4 = *n - i__ - ib + 1;
      sgemm_("Transpose", "No transpose", &ib, &i__3, &i__4, &
       c_b15, &a[i__ + ib + i__ * a_dim1], lda, &a[i__ +
       ib + a_dim1], lda, &c_b15, &a[i__ + a_dim1], lda);
      i__3 = *n - i__ - ib + 1;
      ssyrk_("Lower", "Transpose", &ib, &i__3, &c_b15, &a[i__ +
       ib + i__ * a_dim1], lda, &c_b15, &a[i__ + i__ *
       a_dim1], lda);
  }

     }
 }
    }

    return 0;



}
