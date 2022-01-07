
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float real ;
typedef int integer ;


 int dabs (float) ;

int slaqr1_(integer *n, real *h__, integer *ldh, real *sr1,
 real *si1, real *sr2, real *si2, real *v)
{

    integer h_dim1, h_offset;
    real r__1, r__2, r__3;


    static real s, h21s, h31s;
    h_dim1 = *ldh;
    h_offset = 1 + h_dim1;
    h__ -= h_offset;
    --v;


    if (*n == 2) {
 s = (r__1 = h__[h_dim1 + 1] - *sr2, dabs(r__1)) + dabs(*si2) + (r__2 =
   h__[h_dim1 + 2], dabs(r__2));
 if (s == 0.f) {
     v[1] = 0.f;
     v[2] = 0.f;
 } else {
     h21s = h__[h_dim1 + 2] / s;
     v[1] = h21s * h__[(h_dim1 << 1) + 1] + (h__[h_dim1 + 1] - *sr1) *
      ((h__[h_dim1 + 1] - *sr2) / s) - *si1 * (*si2 / s);
     v[2] = h21s * (h__[h_dim1 + 1] + h__[(h_dim1 << 1) + 2] - *sr1 - *
      sr2);
 }
    } else {
 s = (r__1 = h__[h_dim1 + 1] - *sr2, dabs(r__1)) + dabs(*si2) + (r__2 =
   h__[h_dim1 + 2], dabs(r__2)) + (r__3 = h__[h_dim1 + 3], dabs(
  r__3));
 if (s == 0.f) {
     v[1] = 0.f;
     v[2] = 0.f;
     v[3] = 0.f;
 } else {
     h21s = h__[h_dim1 + 2] / s;
     h31s = h__[h_dim1 + 3] / s;
     v[1] = (h__[h_dim1 + 1] - *sr1) * ((h__[h_dim1 + 1] - *sr2) / s)
      - *si1 * (*si2 / s) + h__[(h_dim1 << 1) + 1] * h21s + h__[
      h_dim1 * 3 + 1] * h31s;
     v[2] = h21s * (h__[h_dim1 + 1] + h__[(h_dim1 << 1) + 2] - *sr1 - *
      sr2) + h__[h_dim1 * 3 + 2] * h31s;
     v[3] = h31s * (h__[h_dim1 + 1] + h__[h_dim1 * 3 + 3] - *sr1 - *
      sr2) + h21s * h__[(h_dim1 << 1) + 3];
 }
    }
    return 0;
}
