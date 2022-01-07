
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* logical ;
typedef scalar_t__ integer ;
typedef int doublecomplex ;


 scalar_t__ max (int,scalar_t__) ;
 int zlauum_ (char*,scalar_t__*,int *,scalar_t__*,scalar_t__*) ;
 int ztrtri_ (char*,char*,scalar_t__*,int *,scalar_t__*,scalar_t__*) ;

int zpotri_(char *uplo, integer *n, doublecomplex *a,
 integer *lda, integer *info)
{

    integer a_dim1, a_offset, i__1;


    extern logical lsame_(char *, char *);
    extern int xerbla_(char *, integer *), zlauum_(
     char *, integer *, doublecomplex *, integer *, integer *),
      ztrtri_(char *, char *, integer *, doublecomplex *, integer *,
     integer *);
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
 xerbla_("ZPOTRI", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }



    ztrtri_(uplo, "Non-unit", n, &a[a_offset], lda, info);
    if (*info > 0) {
 return 0;
    }



    zlauum_(uplo, n, &a[a_offset], lda, info);

    return 0;



}
