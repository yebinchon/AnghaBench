
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int integer ;


 int c__1 ;
 int max (int,int) ;
 int min (int,int) ;
 int slarfg_ (int*,int *,int *,int*,int *) ;
 int xerbla_ (char*,int*) ;

int sgehd2_(integer *n, integer *ilo, integer *ihi, real *a,
 integer *lda, real *tau, real *work, integer *info)
{

    integer a_dim1, a_offset, i__1, i__2, i__3;


    static integer i__;
    static real aii;
    extern int slarf_(char *, integer *, integer *, real *,
     integer *, real *, real *, integer *, real *), xerbla_(
     char *, integer *), slarfg_(integer *, real *, real *,
     integer *, real *);
    a_dim1 = *lda;
    a_offset = 1 + a_dim1;
    a -= a_offset;
    --tau;
    --work;


    *info = 0;
    if (*n < 0) {
 *info = -1;
    } else if (*ilo < 1 || *ilo > max(1,*n)) {
 *info = -2;
    } else if (*ihi < min(*ilo,*n) || *ihi > *n) {
 *info = -3;
    } else if (*lda < max(1,*n)) {
 *info = -5;
    }
    if (*info != 0) {
 i__1 = -(*info);
 xerbla_("SGEHD2", &i__1);
 return 0;
    }

    i__1 = *ihi - 1;
    for (i__ = *ilo; i__ <= i__1; ++i__) {



 i__2 = *ihi - i__;

 i__3 = i__ + 2;
 slarfg_(&i__2, &a[i__ + 1 + i__ * a_dim1], &a[min(i__3,*n) + i__ *
  a_dim1], &c__1, &tau[i__]);
 aii = a[i__ + 1 + i__ * a_dim1];
 a[i__ + 1 + i__ * a_dim1] = 1.f;



 i__2 = *ihi - i__;
 slarf_("Right", ihi, &i__2, &a[i__ + 1 + i__ * a_dim1], &c__1, &tau[
  i__], &a[(i__ + 1) * a_dim1 + 1], lda, &work[1]);



 i__2 = *ihi - i__;
 i__3 = *n - i__;
 slarf_("Left", &i__2, &i__3, &a[i__ + 1 + i__ * a_dim1], &c__1, &tau[
  i__], &a[i__ + 1 + (i__ + 1) * a_dim1], lda, &work[1]);

 a[i__ + 1 + i__ * a_dim1] = aii;

    }

    return 0;



}
