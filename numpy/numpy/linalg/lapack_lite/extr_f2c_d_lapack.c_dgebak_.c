
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* logical ;
typedef int integer ;
typedef int doublereal ;


 int max (int,int) ;
 int min (int,int) ;

int dgebak_(char *job, char *side, integer *n, integer *ilo,
 integer *ihi, doublereal *scale, integer *m, doublereal *v, integer *
 ldv, integer *info)
{

    integer v_dim1, v_offset, i__1;


    static integer i__, k;
    static doublereal s;
    static integer ii;
    extern int dscal_(integer *, doublereal *, doublereal *,
     integer *);
    extern logical lsame_(char *, char *);
    extern int dswap_(integer *, doublereal *, integer *,
     doublereal *, integer *);
    static logical leftv;
    extern int xerbla_(char *, integer *);
    static logical rightv;
    --scale;
    v_dim1 = *ldv;
    v_offset = 1 + v_dim1;
    v -= v_offset;


    rightv = lsame_(side, "R");
    leftv = lsame_(side, "L");

    *info = 0;
    if (! lsame_(job, "N") && ! lsame_(job, "P") && ! lsame_(job, "S")
     && ! lsame_(job, "B")) {
 *info = -1;
    } else if (! rightv && ! leftv) {
 *info = -2;
    } else if (*n < 0) {
 *info = -3;
    } else if (*ilo < 1 || *ilo > max(1,*n)) {
 *info = -4;
    } else if (*ihi < min(*ilo,*n) || *ihi > *n) {
 *info = -5;
    } else if (*m < 0) {
 *info = -7;
    } else if (*ldv < max(1,*n)) {
 *info = -9;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("DGEBAK", &i__1);
 return 0;
    }



    if (*n == 0) {
 return 0;
    }
    if (*m == 0) {
 return 0;
    }
    if (lsame_(job, "N")) {
 return 0;
    }

    if (*ilo == *ihi) {
 goto L30;
    }



    if (lsame_(job, "S") || lsame_(job, "B")) {

 if (rightv) {
     i__1 = *ihi;
     for (i__ = *ilo; i__ <= i__1; ++i__) {
  s = scale[i__];
  dscal_(m, &s, &v[i__ + v_dim1], ldv);

     }
 }

 if (leftv) {
     i__1 = *ihi;
     for (i__ = *ilo; i__ <= i__1; ++i__) {
  s = 1. / scale[i__];
  dscal_(m, &s, &v[i__ + v_dim1], ldv);

     }
 }

    }
L30:
    if (lsame_(job, "P") || lsame_(job, "B")) {
 if (rightv) {
     i__1 = *n;
     for (ii = 1; ii <= i__1; ++ii) {
  i__ = ii;
  if (i__ >= *ilo && i__ <= *ihi) {
      goto L40;
  }
  if (i__ < *ilo) {
      i__ = *ilo - ii;
  }
  k = (integer) scale[i__];
  if (k == i__) {
      goto L40;
  }
  dswap_(m, &v[i__ + v_dim1], ldv, &v[k + v_dim1], ldv);
L40:
  ;
     }
 }

 if (leftv) {
     i__1 = *n;
     for (ii = 1; ii <= i__1; ++ii) {
  i__ = ii;
  if (i__ >= *ilo && i__ <= *ihi) {
      goto L50;
  }
  if (i__ < *ilo) {
      i__ = *ilo - ii;
  }
  k = (integer) scale[i__];
  if (k == i__) {
      goto L50;
  }
  dswap_(m, &v[i__ + v_dim1], ldv, &v[k + v_dim1], ldv);
L50:
  ;
     }
 }
    }

    return 0;



}
