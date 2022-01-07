
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;
typedef int GLcontext ;


 int gl_rotation_matrix (int ,int ,int ,int ,int *) ;
 int gl_save_MultMatrixf (int *,int *) ;

void gl_save_Rotatef( GLcontext *ctx, GLfloat angle,
                      GLfloat x, GLfloat y, GLfloat z )
{
   GLfloat m[16];
   gl_rotation_matrix( angle, x, y, z, m );
   gl_save_MultMatrixf( ctx, m );
}
