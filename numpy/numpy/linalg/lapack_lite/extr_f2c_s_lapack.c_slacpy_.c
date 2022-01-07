
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef void* logical ;
typedef int integer ;


 int min (int,int) ;

int slacpy_(char *uplo, integer *m, integer *n, real *a,
 integer *lda, real *b, integer *ldb)
{

    integer a_dim1, a_offset, b_dim1, b_offset, i__1, i__2;


    static integer i__, j;
    extern logical lsame_(char *, char *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    b_dim1 = *ldb;
    b_offset = 1 + b_dim1;
    b -= b_offset;


    if (lsame_(uplo, "U")) {
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = min(j,*m);
     for (i__ = 1; i__ <= i__2; ++i__) {
  b[i__ + j * b_dim1] = a[i__ + j * a_dim1];

     }

 }
    } else if (lsame_(uplo, "L")) {
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = j; i__ <= i__2; ++i__) {
  b[i__ + j * b_dim1] = a[i__ + j * a_dim1];

     }

 }
    } else {
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {
  b[i__ + j * b_dim1] = a[i__ + j * a_dim1];

     }

 }
    }
    return 0;



}
