
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GLuint ;
typedef scalar_t__ GLubyte ;
typedef int GLint ;
typedef int GLcontext ;


 scalar_t__* ALPHA_ADDR (int const,int const) ;

void gl_write_alpha_pixels( GLcontext* ctx,
                            GLuint n, const GLint x[], const GLint y[],
                            const GLubyte alpha[], const GLubyte mask[] )
{
   GLuint i;

   if (mask) {
      for (i=0;i<n;i++) {
         if (mask[i]) {
            GLubyte *aptr = ALPHA_ADDR( x[i], y[i] );
            *aptr = alpha[i];
         }
      }
   }
   else {
      for (i=0;i<n;i++) {
         GLubyte *aptr = ALPHA_ADDR( x[i], y[i] );
         *aptr = alpha[i];
      }
   }
}
