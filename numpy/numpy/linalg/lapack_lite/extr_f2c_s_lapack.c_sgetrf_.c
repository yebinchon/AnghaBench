
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int integer ;
typedef int ftnlen ;


 int c__1 ;
 int c_b15 ;
 int c_b151 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;
 int sgetf2_ (int*,int*,int *,int*,int*,int*) ;
 int strsm_ (char*,char*,char*,char*,int*,int*,int *,int *,int*,int *,int*) ;
 int xerbla_ (char*,int*) ;

int sgetrf_(integer *m, integer *n, real *a, integer *lda,
 integer *ipiv, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4, i__5;


    static integer i__, j, jb, nb, iinfo;
    extern int sgemm_(char *, char *, integer *, integer *,
     integer *, real *, real *, integer *, real *, integer *, real *,
     real *, integer *), strsm_(char *, char *, char *,
      char *, integer *, integer *, real *, real *, integer *, real *,
     integer *), sgetf2_(integer *,
     integer *, real *, integer *, integer *, integer *), xerbla_(char
     *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    extern int slaswp_(integer *, real *, integer *, integer
     *, integer *, integer *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --ipiv;


    *info = 0;
    if (*m < 0) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*lda < max(1,*m)) {
 *info = -4;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SGETRF", &i__1);
 return 0;
    }



    if (*m == 0 || *n == 0) {
 return 0;
    }



    nb = ilaenv_(&c__1, "SGETRF", " ", m, n, &c_n1, &c_n1, (ftnlen)6, (ftnlen)
     1);
    if (nb <= 1 || nb >= min(*m,*n)) {



 sgetf2_(m, n, &a[a_offset], lda, &ipiv[1], info);
    } else {



 i__1 = min(*m,*n);
 i__2 = nb;
 for (j = 1; i__2 < 0 ? j >= i__1 : j <= i__1; j += i__2) {

     i__3 = min(*m,*n) - j + 1;
     jb = min(i__3,nb);






     i__3 = *m - j + 1;
     sgetf2_(&i__3, &jb, &a[j + j * a_dim1], lda, &ipiv[j], &iinfo);



     if (*info == 0 && iinfo > 0) {
  *info = iinfo + j - 1;
     }

     i__4 = *m, i__5 = j + jb - 1;
     i__3 = min(i__4,i__5);
     for (i__ = j; i__ <= i__3; ++i__) {
  ipiv[i__] = j - 1 + ipiv[i__];

     }



     i__3 = j - 1;
     i__4 = j + jb - 1;
     slaswp_(&i__3, &a[a_offset], lda, &j, &i__4, &ipiv[1], &c__1);

     if (j + jb <= *n) {



  i__3 = *n - j - jb + 1;
  i__4 = j + jb - 1;
  slaswp_(&i__3, &a[(j + jb) * a_dim1 + 1], lda, &j, &i__4, &
   ipiv[1], &c__1);



  i__3 = *n - j - jb + 1;
  strsm_("Left", "Lower", "No transpose", "Unit", &jb, &i__3, &
   c_b15, &a[j + j * a_dim1], lda, &a[j + (j + jb) *
   a_dim1], lda);
  if (j + jb <= *m) {



      i__3 = *m - j - jb + 1;
      i__4 = *n - j - jb + 1;
      sgemm_("No transpose", "No transpose", &i__3, &i__4, &jb,
       &c_b151, &a[j + jb + j * a_dim1], lda, &a[j + (j
       + jb) * a_dim1], lda, &c_b15, &a[j + jb + (j + jb)
        * a_dim1], lda);
  }
     }

 }
    }
    return 0;



}
