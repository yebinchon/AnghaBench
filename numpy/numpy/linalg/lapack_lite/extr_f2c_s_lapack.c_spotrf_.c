
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
 int c_b151 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;
 int spotf2_ (char*,int*,int *,int*,int*) ;
 int ssyrk_ (char*,char*,int*,int*,int *,int *,int*,int *,int *,int*) ;
 int xerbla_ (char*,int*) ;

int spotrf_(char *uplo, integer *n, real *a, integer *lda,
 integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4;


    static integer j, jb, nb;
    extern logical lsame_(char *, char *);
    extern int sgemm_(char *, char *, integer *, integer *,
     integer *, real *, real *, integer *, real *, integer *, real *,
     real *, integer *);
    static logical upper;
    extern int strsm_(char *, char *, char *, char *,
     integer *, integer *, real *, real *, integer *, real *, integer *
     ), ssyrk_(char *, char *, integer
     *, integer *, real *, real *, integer *, real *, real *, integer *
     ), spotf2_(char *, integer *, real *, integer *,
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
 xerbla_("SPOTRF", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }



    nb = ilaenv_(&c__1, "SPOTRF", uplo, n, &c_n1, &c_n1, &c_n1, (ftnlen)6, (
     ftnlen)1);
    if (nb <= 1 || nb >= *n) {



 spotf2_(uplo, n, &a[a_offset], lda, info);
    } else {



 if (upper) {



     i__1 = *n;
     i__2 = nb;
     for (j = 1; i__2 < 0 ? j >= i__1 : j <= i__1; j += i__2) {







  i__3 = nb, i__4 = *n - j + 1;
  jb = min(i__3,i__4);
  i__3 = j - 1;
  ssyrk_("Upper", "Transpose", &jb, &i__3, &c_b151, &a[j *
   a_dim1 + 1], lda, &c_b15, &a[j + j * a_dim1], lda);
  spotf2_("Upper", &jb, &a[j + j * a_dim1], lda, info);
  if (*info != 0) {
      goto L30;
  }
  if (j + jb <= *n) {



      i__3 = *n - j - jb + 1;
      i__4 = j - 1;
      sgemm_("Transpose", "No transpose", &jb, &i__3, &i__4, &
       c_b151, &a[j * a_dim1 + 1], lda, &a[(j + jb) *
       a_dim1 + 1], lda, &c_b15, &a[j + (j + jb) *
       a_dim1], lda);
      i__3 = *n - j - jb + 1;
      strsm_("Left", "Upper", "Transpose", "Non-unit", &jb, &
       i__3, &c_b15, &a[j + j * a_dim1], lda, &a[j + (j
       + jb) * a_dim1], lda);
  }

     }

 } else {



     i__2 = *n;
     i__1 = nb;
     for (j = 1; i__1 < 0 ? j >= i__2 : j <= i__2; j += i__1) {







  i__3 = nb, i__4 = *n - j + 1;
  jb = min(i__3,i__4);
  i__3 = j - 1;
  ssyrk_("Lower", "No transpose", &jb, &i__3, &c_b151, &a[j +
   a_dim1], lda, &c_b15, &a[j + j * a_dim1], lda);
  spotf2_("Lower", &jb, &a[j + j * a_dim1], lda, info);
  if (*info != 0) {
      goto L30;
  }
  if (j + jb <= *n) {



      i__3 = *n - j - jb + 1;
      i__4 = j - 1;
      sgemm_("No transpose", "Transpose", &i__3, &jb, &i__4, &
       c_b151, &a[j + jb + a_dim1], lda, &a[j + a_dim1],
       lda, &c_b15, &a[j + jb + j * a_dim1], lda);
      i__3 = *n - j - jb + 1;
      strsm_("Right", "Lower", "Transpose", "Non-unit", &i__3, &
       jb, &c_b15, &a[j + j * a_dim1], lda, &a[j + jb +
       j * a_dim1], lda);
  }

     }
 }
    }
    goto L40;

L30:
    *info = *info + j - 1;

L40:
    return 0;



}
