
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float get_3x3_determinant(const float *m)
{
 return (m[0] * ((m[4] * m[8]) - (m[7] * m[5]))) -
        (m[1] * ((m[3] * m[8]) - (m[6] * m[5]))) +
        (m[2] * ((m[3] * m[7]) - (m[6] * m[4])));
}
