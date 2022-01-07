
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ logical ;
typedef int integer ;
typedef int doublereal ;
struct TYPE_10__ {scalar_t__ i; scalar_t__ r; } ;
typedef TYPE_1__ doublecomplex ;


 int c__1 ;
 int d_cnjg (TYPE_1__*,TYPE_1__*) ;
 int max (int,int) ;
 int zlartg_ (TYPE_1__*,TYPE_1__*,int *,TYPE_1__*,TYPE_1__*) ;

int ztrexc_(char *compq, integer *n, doublecomplex *t,
 integer *ldt, doublecomplex *q, integer *ldq, integer *ifst, integer *
 ilst, integer *info)
{

    integer q_dim1, q_offset, t_dim1, t_offset, i__1, i__2, i__3;
    doublecomplex z__1;


    static integer k, m1, m2, m3;
    static doublereal cs;
    static doublecomplex t11, t22, sn, temp;
    extern int zrot_(integer *, doublecomplex *, integer *,
     doublecomplex *, integer *, doublereal *, doublecomplex *);
    extern logical lsame_(char *, char *);
    static logical wantq;
    extern int xerbla_(char *, integer *), zlartg_(
     doublecomplex *, doublecomplex *, doublereal *, doublecomplex *,
     doublecomplex *);
    t_dim1 = *ldt;
    t_offset = 1 + t_dim1;
    t -= t_offset;
    q_dim1 = *ldq;
    q_offset = 1 + q_dim1;
    q -= q_offset;


    *info = 0;
    wantq = lsame_(compq, "V");
    if (! lsame_(compq, "N") && ! wantq) {
 *info = -1;
    } else if (*n < 0) {
 *info = -2;
    } else if (*ldt < max(1,*n)) {
 *info = -4;
    } else if (*ldq < 1 || wantq && *ldq < max(1,*n)) {
 *info = -6;
    } else if (*ifst < 1 || *ifst > *n) {
 *info = -7;
    } else if (*ilst < 1 || *ilst > *n) {
 *info = -8;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("ZTREXC", &i__1);
 return 0;
    }



    if (*n == 1 || *ifst == *ilst) {
 return 0;
    }

    if (*ifst < *ilst) {



 m1 = 0;
 m2 = -1;
 m3 = 1;
    } else {



 m1 = -1;
 m2 = 0;
 m3 = -1;
    }

    i__1 = *ilst + m2;
    i__2 = m3;
    for (k = *ifst + m1; i__2 < 0 ? k >= i__1 : k <= i__1; k += i__2) {



 i__3 = k + k * t_dim1;
 t11.r = t[i__3].r, t11.i = t[i__3].i;
 i__3 = k + 1 + (k + 1) * t_dim1;
 t22.r = t[i__3].r, t22.i = t[i__3].i;



 z__1.r = t22.r - t11.r, z__1.i = t22.i - t11.i;
 zlartg_(&t[k + (k + 1) * t_dim1], &z__1, &cs, &sn, &temp);



 if (k + 2 <= *n) {
     i__3 = *n - k - 1;
     zrot_(&i__3, &t[k + (k + 2) * t_dim1], ldt, &t[k + 1 + (k + 2) *
      t_dim1], ldt, &cs, &sn);
 }
 i__3 = k - 1;
 d_cnjg(&z__1, &sn);
 zrot_(&i__3, &t[k * t_dim1 + 1], &c__1, &t[(k + 1) * t_dim1 + 1], &
  c__1, &cs, &z__1);

 i__3 = k + k * t_dim1;
 t[i__3].r = t22.r, t[i__3].i = t22.i;
 i__3 = k + 1 + (k + 1) * t_dim1;
 t[i__3].r = t11.r, t[i__3].i = t11.i;

 if (wantq) {



     d_cnjg(&z__1, &sn);
     zrot_(n, &q[k * q_dim1 + 1], &c__1, &q[(k + 1) * q_dim1 + 1], &
      c__1, &cs, &z__1);
 }


    }

    return 0;



}
