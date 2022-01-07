
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* logical ;
typedef int integer ;
struct TYPE_5__ {int r; int i; } ;
typedef TYPE_1__ doublecomplex ;


 int c__1 ;
 int c_b57 ;
 int max (int,int) ;
 int xerbla_ (char*,int*) ;
 int z_div (TYPE_1__*,int *,TYPE_1__*) ;

int ztrti2_(char *uplo, char *diag, integer *n,
 doublecomplex *a, integer *lda, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2;
    doublecomplex z__1;


    static integer j;
    static doublecomplex ajj;
    extern logical lsame_(char *, char *);
    extern int zscal_(integer *, doublecomplex *,
     doublecomplex *, integer *);
    static logical upper;
    extern int ztrmv_(char *, char *, char *, integer *,
     doublecomplex *, integer *, doublecomplex *, integer *), xerbla_(char *, integer *);
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
 xerbla_("ZTRTI2", &i__1);
 return 0;
    }

    if (upper) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     if (nounit) {
  i__2 = j + j * a_dim1;
  z_div(&z__1, &c_b57, &a[j + j * a_dim1]);
  a[i__2].r = z__1.r, a[i__2].i = z__1.i;
  i__2 = j + j * a_dim1;
  z__1.r = -a[i__2].r, z__1.i = -a[i__2].i;
  ajj.r = z__1.r, ajj.i = z__1.i;
     } else {
  z__1.r = -1., z__1.i = -0.;
  ajj.r = z__1.r, ajj.i = z__1.i;
     }



     i__2 = j - 1;
     ztrmv_("Upper", "No transpose", diag, &i__2, &a[a_offset], lda, &
      a[j * a_dim1 + 1], &c__1);
     i__2 = j - 1;
     zscal_(&i__2, &ajj, &a[j * a_dim1 + 1], &c__1);

 }
    } else {



 for (j = *n; j >= 1; --j) {
     if (nounit) {
  i__1 = j + j * a_dim1;
  z_div(&z__1, &c_b57, &a[j + j * a_dim1]);
  a[i__1].r = z__1.r, a[i__1].i = z__1.i;
  i__1 = j + j * a_dim1;
  z__1.r = -a[i__1].r, z__1.i = -a[i__1].i;
  ajj.r = z__1.r, ajj.i = z__1.i;
     } else {
  z__1.r = -1., z__1.i = -0.;
  ajj.r = z__1.r, ajj.i = z__1.i;
     }
     if (j < *n) {



  i__1 = *n - j;
  ztrmv_("Lower", "No transpose", diag, &i__1, &a[j + 1 + (j +
   1) * a_dim1], lda, &a[j + 1 + j * a_dim1], &c__1);
  i__1 = *n - j;
  zscal_(&i__1, &ajj, &a[j + 1 + j * a_dim1], &c__1);
     }

 }
    }

    return 0;



}
