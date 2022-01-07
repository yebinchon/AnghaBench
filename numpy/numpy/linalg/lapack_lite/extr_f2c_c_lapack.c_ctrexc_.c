
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int real ;
typedef scalar_t__ logical ;
typedef int integer ;
struct TYPE_6__ {scalar_t__ i; scalar_t__ r; } ;
typedef TYPE_1__ complex ;


 int c__1 ;
 int max (int,int) ;
 int r_cnjg (TYPE_1__*,TYPE_1__*) ;
 int xerbla_ (char*,int*) ;

int ctrexc_(char *compq, integer *n, complex *t, integer *
 ldt, complex *q, integer *ldq, integer *ifst, integer *ilst, integer *
 info)
{

    integer q_dim1, q_offset, t_dim1, t_offset, i__1, i__2, i__3;
    complex q__1;


    static integer k, m1, m2, m3;
    static real cs;
    static complex t11, t22, sn, temp;
    extern int crot_(integer *, complex *, integer *,
     complex *, integer *, real *, complex *);
    extern logical lsame_(char *, char *);
    static logical wantq;
    extern int clartg_(complex *, complex *, real *, complex
     *, complex *), xerbla_(char *, integer *);
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
 xerbla_("CTREXC", &i__1);
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



 q__1.r = t22.r - t11.r, q__1.i = t22.i - t11.i;
 clartg_(&t[k + (k + 1) * t_dim1], &q__1, &cs, &sn, &temp);



 if (k + 2 <= *n) {
     i__3 = *n - k - 1;
     crot_(&i__3, &t[k + (k + 2) * t_dim1], ldt, &t[k + 1 + (k + 2) *
      t_dim1], ldt, &cs, &sn);
 }
 i__3 = k - 1;
 r_cnjg(&q__1, &sn);
 crot_(&i__3, &t[k * t_dim1 + 1], &c__1, &t[(k + 1) * t_dim1 + 1], &
  c__1, &cs, &q__1);

 i__3 = k + k * t_dim1;
 t[i__3].r = t22.r, t[i__3].i = t22.i;
 i__3 = k + 1 + (k + 1) * t_dim1;
 t[i__3].r = t11.r, t[i__3].i = t11.i;

 if (wantq) {



     r_cnjg(&q__1, &sn);
     crot_(n, &q[k * q_dim1 + 1], &c__1, &q[(k + 1) * q_dim1 + 1], &
      c__1, &cs, &q__1);
 }


    }

    return 0;



}
