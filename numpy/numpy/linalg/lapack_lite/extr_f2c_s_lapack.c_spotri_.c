
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef void* logical ;
typedef scalar_t__ integer ;


 scalar_t__ max (int,scalar_t__) ;
 int slauum_ (char*,scalar_t__*,int *,scalar_t__*,scalar_t__*) ;
 int strtri_ (char*,char*,scalar_t__*,int *,scalar_t__*,scalar_t__*) ;

int spotri_(char *uplo, integer *n, real *a, integer *lda,
 integer *info)
{

    integer a_dim1, a_offset, i__1;


    extern logical lsame_(char *, char *);
    extern int xerbla_(char *, integer *), slauum_(
     char *, integer *, real *, integer *, integer *), strtri_(
     char *, char *, integer *, real *, integer *, integer *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    *info = 0;
    if (! lsame_(uplo, "U") && ! lsame_(uplo, "L")) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*lda < max(1,*n)) {
 *info = -4;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SPOTRI", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }



    strtri_(uplo, "Non-unit", n, &a[a_offset], lda, info);
    if (*info > 0) {
 return 0;
    }



    slauum_(uplo, n, &a[a_offset], lda, info);

    return 0;



}
