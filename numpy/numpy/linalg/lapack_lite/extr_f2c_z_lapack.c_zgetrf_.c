
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int integer ;
typedef int ftnlen ;
struct TYPE_8__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;


 int c__1 ;
 TYPE_1__ c_b57 ;
 int c_n1 ;
 int max (int,int) ;
 int min (int,int) ;
 int xerbla_ (char*,int*) ;
 int zgetf2_ (int*,int*,TYPE_1__*,int*,int*,int*) ;
 int ztrsm_ (char*,char*,char*,char*,int*,int*,TYPE_1__*,TYPE_1__*,int*,TYPE_1__*,int*) ;

int zgetrf_(integer *m, integer *n, doublecomplex *a,
 integer *lda, integer *ipiv, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4, i__5;
    doublecomplex z__1;


    static integer i__, j, jb, nb, iinfo;
    extern int zgemm_(char *, char *, integer *, integer *,
     integer *, doublecomplex *, doublecomplex *, integer *,
     doublecomplex *, integer *, doublecomplex *, doublecomplex *,
     integer *), ztrsm_(char *, char *, char *, char *,
      integer *, integer *, doublecomplex *, doublecomplex *, integer *
     , doublecomplex *, integer *),
     zgetf2_(integer *, integer *, doublecomplex *, integer *, integer
     *, integer *), xerbla_(char *, integer *);
    extern integer ilaenv_(integer *, char *, char *, integer *, integer *,
     integer *, integer *, ftnlen, ftnlen);
    extern int zlaswp_(integer *, doublecomplex *, integer *,
      integer *, integer *, integer *, integer *);
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
 xerbla_("ZGETRF", &i__1);
 return 0;
    }



    if (*m == 0 || *n == 0) {
 return 0;
    }



    nb = ilaenv_(&c__1, "ZGETRF", " ", m, n, &c_n1, &c_n1, (ftnlen)6, (ftnlen)
     1);
    if (nb <= 1 || nb >= min(*m,*n)) {



 zgetf2_(m, n, &a[a_offset], lda, &ipiv[1], info);
    } else {



 i__1 = min(*m,*n);
 i__2 = nb;
 for (j = 1; i__2 < 0 ? j >= i__1 : j <= i__1; j += i__2) {

     i__3 = min(*m,*n) - j + 1;
     jb = min(i__3,nb);






     i__3 = *m - j + 1;
     zgetf2_(&i__3, &jb, &a[j + j * a_dim1], lda, &ipiv[j], &iinfo);



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
     zlaswp_(&i__3, &a[a_offset], lda, &j, &i__4, &ipiv[1], &c__1);

     if (j + jb <= *n) {



  i__3 = *n - j - jb + 1;
  i__4 = j + jb - 1;
  zlaswp_(&i__3, &a[(j + jb) * a_dim1 + 1], lda, &j, &i__4, &
   ipiv[1], &c__1);



  i__3 = *n - j - jb + 1;
  ztrsm_("Left", "Lower", "No transpose", "Unit", &jb, &i__3, &
   c_b57, &a[j + j * a_dim1], lda, &a[j + (j + jb) *
   a_dim1], lda);
  if (j + jb <= *m) {



      i__3 = *m - j - jb + 1;
      i__4 = *n - j - jb + 1;
      z__1.r = -1., z__1.i = -0.;
      zgemm_("No transpose", "No transpose", &i__3, &i__4, &jb,
       &z__1, &a[j + jb + j * a_dim1], lda, &a[j + (j +
       jb) * a_dim1], lda, &c_b57, &a[j + jb + (j + jb) *
        a_dim1], lda);
  }
     }

 }
    }
    return 0;



}
