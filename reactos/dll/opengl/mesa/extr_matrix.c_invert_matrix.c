
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;


 float* Identity ;
 int MEMCPY (float*,float*,int) ;
 int invert_matrix_general (float const*,float*) ;
 float m11 ;
 float m12 ;
 float m13 ;
 float m14 ;
 float m21 ;
 float m22 ;
 float m23 ;
 float m24 ;
 float m31 ;
 float m32 ;
 float m33 ;
 float m34 ;
 int m41 ;
 int m42 ;
 int m43 ;
 int m44 ;

__attribute__((used)) static void invert_matrix( const GLfloat *m, GLfloat *out )
{
   register GLfloat det;
   GLfloat tmp[16];

   if( (m)[(0)*4+(3)] != 0. || (m)[(1)*4+(3)] != 0. || (m)[(2)*4+(3)] != 0. || (m)[(3)*4+(3)] != 1. ) {
      invert_matrix_general(m, out);
      return;
   }



   tmp[0]= (m)[(1)*4+(1)] * (m)[(2)*4+(2)] - (m)[(2)*4+(1)] * (m)[(1)*4+(2)];
   tmp[1]= (m)[(2)*4+(1)] * (m)[(0)*4+(2)] - (m)[(0)*4+(1)] * (m)[(2)*4+(2)];
   tmp[2]= (m)[(0)*4+(1)] * (m)[(1)*4+(2)] - (m)[(1)*4+(1)] * (m)[(0)*4+(2)];


   det= (m)[(0)*4+(0)] * tmp[0] + (m)[(1)*4+(0)] * tmp[1] + (m)[(2)*4+(0)] * tmp[2];


   if (det == 0.0F) {

      MEMCPY( out, Identity, 16*sizeof(GLfloat) );
   }
   else {
      GLfloat d12, d13, d23, d24, d34, d41;
      register GLfloat im11, im12, im13, im14;

      det= 1. / det;


      tmp[0] *= det;
      tmp[1] *= det;
      tmp[2] *= det;
      tmp[3] = 0.;

      im11= (m)[(0)*4+(0)] * det;
      im12= (m)[(1)*4+(0)] * det;
      im13= (m)[(2)*4+(0)] * det;
      im14= (m)[(3)*4+(0)] * det;
      tmp[4] = im13 * (m)[(1)*4+(2)] - im12 * (m)[(2)*4+(2)];
      tmp[5] = im11 * (m)[(2)*4+(2)] - im13 * (m)[(0)*4+(2)];
      tmp[6] = im12 * (m)[(0)*4+(2)] - im11 * (m)[(1)*4+(2)];
      tmp[7] = 0.;



      d12 = im11*(m)[(1)*4+(1)] - (m)[(0)*4+(1)]*im12;
      d13 = im11*(m)[(2)*4+(1)] - (m)[(0)*4+(1)]*im13;
      d23 = im12*(m)[(2)*4+(1)] - (m)[(1)*4+(1)]*im13;
      d24 = im12*(m)[(3)*4+(1)] - (m)[(1)*4+(1)]*im14;
      d34 = im13*(m)[(3)*4+(1)] - (m)[(2)*4+(1)]*im14;
      d41 = im14*(m)[(0)*4+(1)] - (m)[(3)*4+(1)]*im11;

      tmp[8] = d23;
      tmp[9] = -d13;
      tmp[10] = d12;
      tmp[11] = 0.;

      tmp[12] = -((m)[(1)*4+(2)] * d34 - (m)[(2)*4+(2)] * d24 + (m)[(3)*4+(2)] * d23);
      tmp[13] = ((m)[(0)*4+(2)] * d34 + (m)[(2)*4+(2)] * d41 + (m)[(3)*4+(2)] * d13);
      tmp[14] = -((m)[(0)*4+(2)] * d24 + (m)[(1)*4+(2)] * d41 + (m)[(3)*4+(2)] * d12);
      tmp[15] = 1.;

      MEMCPY(out, tmp, 16*sizeof(GLfloat));
  }
}
