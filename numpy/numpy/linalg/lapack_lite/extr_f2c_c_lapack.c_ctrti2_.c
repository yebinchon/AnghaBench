
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* logical ;
typedef int integer ;
struct TYPE_5__ {float r; float i; } ;
typedef TYPE_1__ complex ;


 int c__1 ;
 int c_b57 ;
 int c_div (TYPE_1__*,int *,TYPE_1__*) ;
 int max (int,int) ;
 int xerbla_ (char*,int*) ;

int ctrti2_(char *uplo, char *diag, integer *n, complex *a,
 integer *lda, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2;
    complex q__1;


    static integer j;
    static complex ajj;
    extern int cscal_(integer *, complex *, complex *,
     integer *);
    extern logical lsame_(char *, char *);
    static logical upper;
    extern int ctrmv_(char *, char *, char *, integer *,
     complex *, integer *, complex *, integer *), xerbla_(char *, integer *);
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
 xerbla_("CTRTI2", &i__1);
 return 0;
    }

    if (upper) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     if (nounit) {
  i__2 = j + j * a_dim1;
  c_div(&q__1, &c_b57, &a[j + j * a_dim1]);
  a[i__2].r = q__1.r, a[i__2].i = q__1.i;
  i__2 = j + j * a_dim1;
  q__1.r = -a[i__2].r, q__1.i = -a[i__2].i;
  ajj.r = q__1.r, ajj.i = q__1.i;
     } else {
  q__1.r = -1.f, q__1.i = -0.f;
  ajj.r = q__1.r, ajj.i = q__1.i;
     }



     i__2 = j - 1;
     ctrmv_("Upper", "No transpose", diag, &i__2, &a[a_offset], lda, &
      a[j * a_dim1 + 1], &c__1);
     i__2 = j - 1;
     cscal_(&i__2, &ajj, &a[j * a_dim1 + 1], &c__1);

 }
    } else {



 for (j = *n; j >= 1; --j) {
     if (nounit) {
  i__1 = j + j * a_dim1;
  c_div(&q__1, &c_b57, &a[j + j * a_dim1]);
  a[i__1].r = q__1.r, a[i__1].i = q__1.i;
  i__1 = j + j * a_dim1;
  q__1.r = -a[i__1].r, q__1.i = -a[i__1].i;
  ajj.r = q__1.r, ajj.i = q__1.i;
     } else {
  q__1.r = -1.f, q__1.i = -0.f;
  ajj.r = q__1.r, ajj.i = q__1.i;
     }
     if (j < *n) {



  i__1 = *n - j;
  ctrmv_("Lower", "No transpose", diag, &i__1, &a[j + 1 + (j +
   1) * a_dim1], lda, &a[j + 1 + j * a_dim1], &c__1);
  i__1 = *n - j;
  cscal_(&i__1, &ajj, &a[j + 1 + j * a_dim1], &c__1);
     }

 }
    }

    return 0;



}
