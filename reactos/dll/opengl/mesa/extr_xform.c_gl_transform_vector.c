
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;


 int M (int,int) ;

void gl_transform_vector( GLfloat u[4], const GLfloat v[4], const GLfloat m[16] )
{
   GLfloat v0=v[0], v1=v[1], v2=v[2], v3=v[3];

   u[0] = v0 * m[0*4+0] + v1 * m[0*4+1] + v2 * m[0*4+2] + v3 * m[0*4+3];
   u[1] = v0 * m[1*4+0] + v1 * m[1*4+1] + v2 * m[1*4+2] + v3 * m[1*4+3];
   u[2] = v0 * m[2*4+0] + v1 * m[2*4+1] + v2 * m[2*4+2] + v3 * m[2*4+3];
   u[3] = v0 * m[3*4+0] + v1 * m[3*4+1] + v2 * m[3*4+2] + v3 * m[3*4+3];

}
