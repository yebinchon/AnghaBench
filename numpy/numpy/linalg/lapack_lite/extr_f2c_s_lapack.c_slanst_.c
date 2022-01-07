
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef void* logical ;
typedef size_t integer ;
typedef int doublereal ;


 size_t c__1 ;
 int dabs (int) ;
 int dmax (int,int) ;
 int sqrt (int) ;

doublereal slanst_(char *norm, integer *n, real *d__, real *e)
{

    integer i__1;
    real ret_val, r__1, r__2, r__3, r__4, r__5;


    static integer i__;
    static real sum, scale;
    extern logical lsame_(char *, char *);
    static real anorm;
    extern int slassq_(integer *, real *, integer *, real *,
     real *);
    --e;
    --d__;


    if (*n <= 0) {
 anorm = 0.f;
    } else if (lsame_(norm, "M")) {



 anorm = (r__1 = d__[*n], dabs(r__1));
 i__1 = *n - 1;
 for (i__ = 1; i__ <= i__1; ++i__) {

     r__2 = anorm, r__3 = (r__1 = d__[i__], dabs(r__1));
     anorm = dmax(r__2,r__3);

     r__2 = anorm, r__3 = (r__1 = e[i__], dabs(r__1));
     anorm = dmax(r__2,r__3);

 }
    } else if (lsame_(norm, "O") || *(unsigned char *)
     norm == '1' || lsame_(norm, "I")) {



 if (*n == 1) {
     anorm = dabs(d__[1]);
 } else {

     r__3 = dabs(d__[1]) + dabs(e[1]), r__4 = (r__1 = e[*n - 1], dabs(
      r__1)) + (r__2 = d__[*n], dabs(r__2));
     anorm = dmax(r__3,r__4);
     i__1 = *n - 1;
     for (i__ = 2; i__ <= i__1; ++i__) {

  r__4 = anorm, r__5 = (r__1 = d__[i__], dabs(r__1)) + (r__2 =
   e[i__], dabs(r__2)) + (r__3 = e[i__ - 1], dabs(r__3));
  anorm = dmax(r__4,r__5);

     }
 }
    } else if (lsame_(norm, "F") || lsame_(norm, "E")) {



 scale = 0.f;
 sum = 1.f;
 if (*n > 1) {
     i__1 = *n - 1;
     slassq_(&i__1, &e[1], &c__1, &scale, &sum);
     sum *= 2;
 }
 slassq_(n, &d__[1], &c__1, &scale, &sum);
 anorm = scale * sqrt(sum);
    }

    ret_val = anorm;
    return ret_val;



}
