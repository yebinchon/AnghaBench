
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Complex ;


 double Mag (int *) ;

__attribute__((used)) static int
complex_abs_cmp_internal(Complex * a, Complex * b)
{
 double amag = Mag(a),
    bmag = Mag(b);

 if (amag < bmag)
  return -1;
 if (amag > bmag)
  return 1;
 return 0;
}
