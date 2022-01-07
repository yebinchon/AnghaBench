
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* logical ;
typedef size_t integer ;
typedef int doublereal ;


 int abs (int) ;
 size_t c__1 ;
 int max (int,int) ;
 int sqrt (int) ;

doublereal dlanst_(char *norm, integer *n, doublereal *d__, doublereal *e)
{

    integer i__1;
    doublereal ret_val, d__1, d__2, d__3, d__4, d__5;


    static integer i__;
    static doublereal sum, scale;
    extern logical lsame_(char *, char *);
    static doublereal anorm;
    extern int dlassq_(integer *, doublereal *, integer *,
     doublereal *, doublereal *);
    --e;
    --d__;


    if (*n <= 0) {
 anorm = 0.;
    } else if (lsame_(norm, "M")) {



 anorm = (d__1 = d__[*n], abs(d__1));
 i__1 = *n - 1;
 for (i__ = 1; i__ <= i__1; ++i__) {

     d__2 = anorm, d__3 = (d__1 = d__[i__], abs(d__1));
     anorm = max(d__2,d__3);

     d__2 = anorm, d__3 = (d__1 = e[i__], abs(d__1));
     anorm = max(d__2,d__3);

 }
    } else if (lsame_(norm, "O") || *(unsigned char *)
     norm == '1' || lsame_(norm, "I")) {



 if (*n == 1) {
     anorm = abs(d__[1]);
 } else {

     d__3 = abs(d__[1]) + abs(e[1]), d__4 = (d__1 = e[*n - 1], abs(
      d__1)) + (d__2 = d__[*n], abs(d__2));
     anorm = max(d__3,d__4);
     i__1 = *n - 1;
     for (i__ = 2; i__ <= i__1; ++i__) {

  d__4 = anorm, d__5 = (d__1 = d__[i__], abs(d__1)) + (d__2 = e[
   i__], abs(d__2)) + (d__3 = e[i__ - 1], abs(d__3));
  anorm = max(d__4,d__5);

     }
 }
    } else if (lsame_(norm, "F") || lsame_(norm, "E")) {



 scale = 0.;
 sum = 1.;
 if (*n > 1) {
     i__1 = *n - 1;
     dlassq_(&i__1, &e[1], &c__1, &scale, &sum);
     sum *= 2;
 }
 dlassq_(n, &d__[1], &c__1, &scale, &sum);
 anorm = scale * sqrt(sum);
    }

    ret_val = anorm;
    return ret_val;



}
