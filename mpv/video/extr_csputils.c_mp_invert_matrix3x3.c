
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void mp_invert_matrix3x3(float m[3][3])
{
    float m00 = m[0][0], m01 = m[0][1], m02 = m[0][2],
          m10 = m[1][0], m11 = m[1][1], m12 = m[1][2],
          m20 = m[2][0], m21 = m[2][1], m22 = m[2][2];


    m[0][0] = (m11 * m22 - m21 * m12);
    m[0][1] = -(m01 * m22 - m21 * m02);
    m[0][2] = (m01 * m12 - m11 * m02);
    m[1][0] = -(m10 * m22 - m20 * m12);
    m[1][1] = (m00 * m22 - m20 * m02);
    m[1][2] = -(m00 * m12 - m10 * m02);
    m[2][0] = (m10 * m21 - m20 * m11);
    m[2][1] = -(m00 * m21 - m20 * m01);
    m[2][2] = (m00 * m11 - m10 * m01);



    float det = m00 * m[0][0] + m10 * m[0][1] + m20 * m[0][2];
    det = 1.0f / det;

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++)
            m[i][j] *= det;
    }
}
