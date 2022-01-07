
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* logical ;
typedef int integer ;
typedef int ftnlen ;
typedef int doublereal ;
typedef char* address ;


 int c__1 ;
 int c__2 ;
 int c_b15 ;
 int c_b151 ;
 int c_n1 ;
 int dtrsm_ (char*,char*,char*,char*,int*,int*,int *,int*,int*,int*,int*) ;
 int max (int,int) ;
 int min (int,int) ;
 int s_cat (char*,char**,int*,int *,int ) ;
 int xerbla_ (char*,int*) ;

int dtrtri_(char *uplo, char *diag, integer *n, doublereal *
 a, integer *lda, integer *info)
{

    address a__1[2];
    integer a_dim1, a_offset, i__1, i__2[2], i__3, i__4, i__5;
    char ch__1[2];


    static integer j, jb, nb, nn;
    extern logical lsame_(char *, char *);
    extern int dtrmm_(char *, char *, char *, char *,
     integer *, integer *, doublereal *, doublereal *, integer *,
     doublereal *, integer *), dtrsm_(
     char *, char *, char *, char *, integer *, integer *, doublereal *
     , doublereal *, integer *, doublereal *, integer *);
    static logical upper;
    extern int dtrti2_(char *, char *, integer *, doublereal
     *, integer *, integer *), xerbla_(char *, integer
     *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    static logical nounit;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    *info = 0;
    upper = lsame_(uplo, "U");
    nounit = lsame_(diag, "N");
    if (! upper && ! lsame_(uplo, "L")) {
 *info = -1;
    } else if (! nounit && ! lsame_(diag, "U")) {
 *info = -2;
    } else if (*n < 0) {
 *info = -3;
    } else if (*lda < max(1,*n)) {
 *info = -5;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DTRTRI", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }



    if (nounit) {
 i__1 = *n;
 for (*info = 1; *info <= i__1; ++(*info)) {
     if (a[*info + *info * a_dim1] == 0.) {
  return 0;
     }

 }
 *info = 0;
    }






    i__2[0] = 1, a__1[0] = uplo;
    i__2[1] = 1, a__1[1] = diag;
    s_cat(ch__1, a__1, i__2, &c__2, (ftnlen)2);
    nb = ilaenv_(&c__1, "DTRTRI", ch__1, n, &c_n1, &c_n1, &c_n1, (ftnlen)6, (
     ftnlen)2);
    if (nb <= 1 || nb >= *n) {



 dtrti2_(uplo, diag, n, &a[a_offset], lda, info);
    } else {



 if (upper) {



     i__1 = *n;
     i__3 = nb;
     for (j = 1; i__3 < 0 ? j >= i__1 : j <= i__1; j += i__3) {

  i__4 = nb, i__5 = *n - j + 1;
  jb = min(i__4,i__5);



  i__4 = j - 1;
  dtrmm_("Left", "Upper", "No transpose", diag, &i__4, &jb, &
   c_b15, &a[a_offset], lda, &a[j * a_dim1 + 1], lda);
  i__4 = j - 1;
  dtrsm_("Right", "Upper", "No transpose", diag, &i__4, &jb, &
   c_b151, &a[j + j * a_dim1], lda, &a[j * a_dim1 + 1],
   lda);



  dtrti2_("Upper", diag, &jb, &a[j + j * a_dim1], lda, info);

     }
 } else {



     nn = (*n - 1) / nb * nb + 1;
     i__3 = -nb;
     for (j = nn; i__3 < 0 ? j >= 1 : j <= 1; j += i__3) {

  i__1 = nb, i__4 = *n - j + 1;
  jb = min(i__1,i__4);
  if (j + jb <= *n) {



      i__1 = *n - j - jb + 1;
      dtrmm_("Left", "Lower", "No transpose", diag, &i__1, &jb,
       &c_b15, &a[j + jb + (j + jb) * a_dim1], lda, &a[j
       + jb + j * a_dim1], lda);
      i__1 = *n - j - jb + 1;
      dtrsm_("Right", "Lower", "No transpose", diag, &i__1, &jb,
        &c_b151, &a[j + j * a_dim1], lda, &a[j + jb + j *
        a_dim1], lda);
  }



  dtrti2_("Lower", diag, &jb, &a[j + j * a_dim1], lda, info);

     }
 }
    }

    return 0;



}
