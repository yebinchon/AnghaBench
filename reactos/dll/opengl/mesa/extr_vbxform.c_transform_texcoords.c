
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TextureMatrixType; int* TextureMatrix; } ;
typedef size_t GLuint ;
typedef int GLfloat ;
typedef TYPE_1__ GLcontext ;






 int asm_transform_points4_2d (size_t,int**,int*,int**) ;
 int asm_transform_points4_3d (size_t,int**,int*,int**) ;
 int asm_transform_points4_general (size_t,int**,int*,int**) ;
 int gl_problem (int *,char*) ;

__attribute__((used)) static void transform_texcoords( GLcontext *ctx, GLuint n, GLfloat t[][4] )
{

   switch (ctx->TextureMatrixType) {
      case 129:
         {
            const GLfloat *m = ctx->TextureMatrix;
            GLfloat m0 = m[0], m4 = m[4], m8 = m[8], m12 = m[12];
            GLfloat m1 = m[1], m5 = m[5], m9 = m[9], m13 = m[13];
            GLfloat m2 = m[2], m6 = m[6], m10 = m[10], m14 = m[14];
            GLfloat m3 = m[3], m7 = m[7], m11 = m[11], m15 = m[15];
            GLuint i;
            for (i=0;i<n;i++) {
               GLfloat t0 = t[i][0], t1 = t[i][1], t2 = t[i][2], t3 = t[i][3];
               t[i][0] = m0 * t0 + m4 * t1 + m8 * t2 + m12 * t3;
               t[i][1] = m1 * t0 + m5 * t1 + m9 * t2 + m13 * t3;
               t[i][2] = m2 * t0 + m6 * t1 + m10 * t2 + m14 * t3;
               t[i][3] = m3 * t0 + m7 * t1 + m11 * t2 + m15 * t3;
            }
         }
         break;
      case 128:

         break;
      case 131:
         {
            const GLfloat *m = ctx->TextureMatrix;
            GLfloat m0 = m[0], m1 = m[1], m4 = m[4], m5 = m[5];
            GLfloat m12 = m[12], m13 = m[13];
            GLuint i;
            for (i=0;i<n;i++) {
               GLfloat t0 = t[i][0], t1 = t[i][1], t2 = t[i][2], t3 = t[i][3];
               t[i][0] = m0 * t0 + m4 * t1 + m12 * t3;
               t[i][1] = m1 * t0 + m5 * t1 + m13 * t3;
               t[i][2] = + t2 ;

            }
         }
         break;
      case 130:
         {
            const GLfloat *m = ctx->TextureMatrix;
            GLfloat m0 = m[0], m1 = m[1], m2 = m[2], m4 = m[4], m5 = m[5];
            GLfloat m6 = m[6], m8 = m[8], m9 = m[9], m10 = m[10];
            GLfloat m12 = m[12], m13 = m[13], m14 = m[14];
            GLuint i;
            for (i=0;i<n;i++) {
               GLfloat t0 = t[i][0], t1 = t[i][1], t2 = t[i][2], t3 = t[i][3];
               t[i][0] = m0 * t0 + m4 * t1 + m8 * t2 + m12 * t3;
               t[i][1] = m1 * t0 + m5 * t1 + m9 * t2 + m13 * t3;
               t[i][2] = m2 * t0 + m6 * t1 + m10 * t2 + m14 * t3;

            }
         }
         break;
      default:

         gl_problem( ((void*)0), "invalid matrix type in transform_texcoords()" );
   }
}
