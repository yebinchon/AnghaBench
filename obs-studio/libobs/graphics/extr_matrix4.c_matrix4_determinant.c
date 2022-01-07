
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix4 {int dummy; } ;


 float get_3x3_determinant (float*) ;
 int get_3x3_submatrix (float*,struct matrix4 const*,int ,int) ;

float matrix4_determinant(const struct matrix4 *m)
{
 const float *mf = (const float *)m;
 float det, result = 0.0f, i = 1.0f;
 float m3x3[9];
 int n;

 for (n = 0; n < 4; n++, i = -i) {
  get_3x3_submatrix(m3x3, m, 0, n);

  det = get_3x3_determinant(m3x3);
  result += mf[n] * det * i;
 }

 return result;
}
