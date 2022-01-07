
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef void* logical ;
typedef int integer ;
typedef float doublereal ;


 void* FALSE_ ;
 void* TRUE_ ;
 scalar_t__ dabs (float) ;
 int max (int,int) ;
 int min (int,int) ;

int slascl_(char *type__, integer *kl, integer *ku, real *
 cfrom, real *cto, integer *m, integer *n, real *a, integer *lda,
 integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3, i__4, i__5;


    static integer i__, j, k1, k2, k3, k4;
    static real mul, cto1;
    static logical done;
    static real ctoc;
    extern logical lsame_(char *, char *);
    static integer itype;
    static real cfrom1;
    extern doublereal slamch_(char *);
    static real cfromc;
    extern int xerbla_(char *, integer *);
    static real bignum;
    extern logical sisnan_(real *);
    static real smlnum;
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;


    *info = 0;

    if (lsame_(type__, "G")) {
 itype = 0;
    } else if (lsame_(type__, "L")) {
 itype = 1;
    } else if (lsame_(type__, "U")) {
 itype = 2;
    } else if (lsame_(type__, "H")) {
 itype = 3;
    } else if (lsame_(type__, "B")) {
 itype = 4;
    } else if (lsame_(type__, "Q")) {
 itype = 5;
    } else if (lsame_(type__, "Z")) {
 itype = 6;
    } else {
 itype = -1;
    }

    if (itype == -1) {
 *info = -1;
    } else if (*cfrom == 0.f || sisnan_(cfrom)) {
 *info = -4;
    } else if (sisnan_(cto)) {
 *info = -5;
    } else if (*m < 0) {
 *info = -6;
    } else if (*n < 0 || itype == 4 && *n != *m || itype == 5 && *n != *m) {
 *info = -7;
    } else if (itype <= 3 && *lda < max(1,*m)) {
 *info = -9;
    } else if (itype >= 4) {

 i__1 = *m - 1;
 if (*kl < 0 || *kl > max(i__1,0)) {
     *info = -2;
 } else {

     i__1 = *n - 1;
     if (*ku < 0 || *ku > max(i__1,0) || (itype == 4 || itype == 5) &&
      *kl != *ku) {
  *info = -3;
     } else if (itype == 4 && *lda < *kl + 1 || itype == 5 && *lda < *
      ku + 1 || itype == 6 && *lda < (*kl << 1) + *ku + 1) {
  *info = -9;
     }
 }
    }

    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SLASCL", &i__1);
 return 0;
    }



    if (*n == 0 || *m == 0) {
 return 0;
    }



    smlnum = slamch_("S");
    bignum = 1.f / smlnum;

    cfromc = *cfrom;
    ctoc = *cto;

L10:
    cfrom1 = cfromc * smlnum;
    if (cfrom1 == cfromc) {




 mul = ctoc / cfromc;
 done = TRUE_;
 cto1 = ctoc;
    } else {
 cto1 = ctoc / bignum;
 if (cto1 == ctoc) {




     mul = ctoc;
     done = TRUE_;
     cfromc = 1.f;
 } else if (dabs(cfrom1) > dabs(ctoc) && ctoc != 0.f) {
     mul = smlnum;
     done = FALSE_;
     cfromc = cfrom1;
 } else if (dabs(cto1) > dabs(cfromc)) {
     mul = bignum;
     done = FALSE_;
     ctoc = cto1;
 } else {
     mul = ctoc / cfromc;
     done = TRUE_;
 }
    }

    if (itype == 0) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = 1; i__ <= i__2; ++i__) {
  a[i__ + j * a_dim1] *= mul;

     }

 }

    } else if (itype == 1) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = *m;
     for (i__ = j; i__ <= i__2; ++i__) {
  a[i__ + j * a_dim1] *= mul;

     }

 }

    } else if (itype == 2) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {
     i__2 = min(j,*m);
     for (i__ = 1; i__ <= i__2; ++i__) {
  a[i__ + j * a_dim1] *= mul;

     }

 }

    } else if (itype == 3) {



 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {

     i__3 = j + 1;
     i__2 = min(i__3,*m);
     for (i__ = 1; i__ <= i__2; ++i__) {
  a[i__ + j * a_dim1] *= mul;

     }

 }

    } else if (itype == 4) {



 k3 = *kl + 1;
 k4 = *n + 1;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {

     i__3 = k3, i__4 = k4 - j;
     i__2 = min(i__3,i__4);
     for (i__ = 1; i__ <= i__2; ++i__) {
  a[i__ + j * a_dim1] *= mul;

     }

 }

    } else if (itype == 5) {



 k1 = *ku + 2;
 k3 = *ku + 1;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {

     i__2 = k1 - j;
     i__3 = k3;
     for (i__ = max(i__2,1); i__ <= i__3; ++i__) {
  a[i__ + j * a_dim1] *= mul;

     }

 }

    } else if (itype == 6) {



 k1 = *kl + *ku + 2;
 k2 = *kl + 1;
 k3 = (*kl << 1) + *ku + 1;
 k4 = *kl + *ku + 1 + *m;
 i__1 = *n;
 for (j = 1; j <= i__1; ++j) {

     i__3 = k1 - j;

     i__4 = k3, i__5 = k4 - j;
     i__2 = min(i__4,i__5);
     for (i__ = max(i__3,k2); i__ <= i__2; ++i__) {
  a[i__ + j * a_dim1] *= mul;

     }

 }

    }

    if (! done) {
 goto L10;
    }

    return 0;



}
