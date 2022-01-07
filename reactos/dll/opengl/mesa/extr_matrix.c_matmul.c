
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef int GLfloat ;


 int A (int,int) ;
 int B (int,int) ;
 int P (int,int) ;

__attribute__((used)) static void matmul( GLfloat *product, const GLfloat *a, const GLfloat *b )
{

   GLint i;






   for (i = 0; i < 4; i++) {
      GLfloat ai0=a[(0<<2)+i], ai1=a[(1<<2)+i], ai2=a[(2<<2)+i], ai3=a[(3<<2)+i];
      product[(0<<2)+i] = ai0 * b[(0<<2)+0] + ai1 * b[(0<<2)+1] + ai2 * b[(0<<2)+2] + ai3 * b[(0<<2)+3];
      product[(1<<2)+i] = ai0 * b[(1<<2)+0] + ai1 * b[(1<<2)+1] + ai2 * b[(1<<2)+2] + ai3 * b[(1<<2)+3];
      product[(2<<2)+i] = ai0 * b[(2<<2)+0] + ai1 * b[(2<<2)+1] + ai2 * b[(2<<2)+2] + ai3 * b[(2<<2)+3];
      product[(3<<2)+i] = ai0 * b[(3<<2)+0] + ai1 * b[(3<<2)+1] + ai2 * b[(3<<2)+2] + ai3 * b[(3<<2)+3];
   }




}
