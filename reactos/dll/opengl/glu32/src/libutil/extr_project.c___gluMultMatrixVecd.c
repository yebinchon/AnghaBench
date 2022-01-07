
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLdouble ;



__attribute__((used)) static void __gluMultMatrixVecd(const GLdouble matrix[16], const GLdouble in[4],
        GLdouble out[4])
{
    int i;

    for (i=0; i<4; i++) {
 out[i] =
     in[0] * matrix[0*4+i] +
     in[1] * matrix[1*4+i] +
     in[2] * matrix[2*4+i] +
     in[3] * matrix[3*4+i];
    }
}
