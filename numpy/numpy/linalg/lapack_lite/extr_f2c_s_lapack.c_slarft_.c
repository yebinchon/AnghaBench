
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef void* logical ;
typedef int integer ;


 int c__1 ;
 float c_b29 ;
 int max (int,int) ;
 int min (int,int) ;

int slarft_(char *direct, char *storev, integer *n, integer *
 k, real *v, integer *ldv, real *tau, real *t, integer *ldt)
{

    integer t_dim1, t_offset, v_dim1, v_offset, i__1, i__2, i__3;
    real r__1;


    static integer i__, j, prevlastv;
    static real vii;
    extern logical lsame_(char *, char *);
    extern int sgemv_(char *, integer *, integer *, real *,
     real *, integer *, real *, integer *, real *, real *, integer *);
    static integer lastv;
    extern int strmv_(char *, char *, char *, integer *,
     real *, integer *, real *, integer *);
    v_dim1 = *ldv;
    v_offset = 1 + v_dim1;
    v -= v_offset;
    --tau;
    t_dim1 = *ldt;
    t_offset = 1 + t_dim1;
    t -= t_offset;


    if (*n == 0) {
 return 0;
    }

    if (lsame_(direct, "F")) {
 prevlastv = *n;
 i__1 = *k;
 for (i__ = 1; i__ <= i__1; ++i__) {
     prevlastv = max(i__,prevlastv);
     if (tau[i__] == 0.f) {



  i__2 = i__;
  for (j = 1; j <= i__2; ++j) {
      t[j + i__ * t_dim1] = 0.f;

  }
     } else {



  vii = v[i__ + i__ * v_dim1];
  v[i__ + i__ * v_dim1] = 1.f;
  if (lsame_(storev, "C")) {

      i__2 = i__ + 1;
      for (lastv = *n; lastv >= i__2; --lastv) {
   if (v[lastv + i__ * v_dim1] != 0.f) {
       goto L15;
   }
      }
L15:
      j = min(lastv,prevlastv);



      i__2 = j - i__ + 1;
      i__3 = i__ - 1;
      r__1 = -tau[i__];
      sgemv_("Transpose", &i__2, &i__3, &r__1, &v[i__ + v_dim1],
        ldv, &v[i__ + i__ * v_dim1], &c__1, &c_b29, &t[
       i__ * t_dim1 + 1], &c__1);
  } else {

      i__2 = i__ + 1;
      for (lastv = *n; lastv >= i__2; --lastv) {
   if (v[i__ + lastv * v_dim1] != 0.f) {
       goto L16;
   }
      }
L16:
      j = min(lastv,prevlastv);



      i__2 = i__ - 1;
      i__3 = j - i__ + 1;
      r__1 = -tau[i__];
      sgemv_("No transpose", &i__2, &i__3, &r__1, &v[i__ *
       v_dim1 + 1], ldv, &v[i__ + i__ * v_dim1], ldv, &
       c_b29, &t[i__ * t_dim1 + 1], &c__1);
  }
  v[i__ + i__ * v_dim1] = vii;



  i__2 = i__ - 1;
  strmv_("Upper", "No transpose", "Non-unit", &i__2, &t[
   t_offset], ldt, &t[i__ * t_dim1 + 1], &c__1);
  t[i__ + i__ * t_dim1] = tau[i__];
  if (i__ > 1) {
      prevlastv = max(prevlastv,lastv);
  } else {
      prevlastv = lastv;
  }
     }

 }
    } else {
 prevlastv = 1;
 for (i__ = *k; i__ >= 1; --i__) {
     if (tau[i__] == 0.f) {



  i__1 = *k;
  for (j = i__; j <= i__1; ++j) {
      t[j + i__ * t_dim1] = 0.f;

  }
     } else {



  if (i__ < *k) {
      if (lsame_(storev, "C")) {
   vii = v[*n - *k + i__ + i__ * v_dim1];
   v[*n - *k + i__ + i__ * v_dim1] = 1.f;

   i__1 = i__ - 1;
   for (lastv = 1; lastv <= i__1; ++lastv) {
       if (v[lastv + i__ * v_dim1] != 0.f) {
    goto L35;
       }
   }
L35:
   j = max(lastv,prevlastv);






   i__1 = *n - *k + i__ - j + 1;
   i__2 = *k - i__;
   r__1 = -tau[i__];
   sgemv_("Transpose", &i__1, &i__2, &r__1, &v[j + (i__
    + 1) * v_dim1], ldv, &v[j + i__ * v_dim1], &
    c__1, &c_b29, &t[i__ + 1 + i__ * t_dim1], &
    c__1);
   v[*n - *k + i__ + i__ * v_dim1] = vii;
      } else {
   vii = v[i__ + (*n - *k + i__) * v_dim1];
   v[i__ + (*n - *k + i__) * v_dim1] = 1.f;

   i__1 = i__ - 1;
   for (lastv = 1; lastv <= i__1; ++lastv) {
       if (v[i__ + lastv * v_dim1] != 0.f) {
    goto L36;
       }
   }
L36:
   j = max(lastv,prevlastv);






   i__1 = *k - i__;
   i__2 = *n - *k + i__ - j + 1;
   r__1 = -tau[i__];
   sgemv_("No transpose", &i__1, &i__2, &r__1, &v[i__ +
    1 + j * v_dim1], ldv, &v[i__ + j * v_dim1],
    ldv, &c_b29, &t[i__ + 1 + i__ * t_dim1], &
    c__1);
   v[i__ + (*n - *k + i__) * v_dim1] = vii;
      }



      i__1 = *k - i__;
      strmv_("Lower", "No transpose", "Non-unit", &i__1, &t[i__
       + 1 + (i__ + 1) * t_dim1], ldt, &t[i__ + 1 + i__ *
        t_dim1], &c__1)
       ;
      if (i__ > 1) {
   prevlastv = min(prevlastv,lastv);
      } else {
   prevlastv = lastv;
      }
  }
  t[i__ + i__ * t_dim1] = tau[i__];
     }

 }
    }
    return 0;



}
