
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GLuint ;
typedef scalar_t__ GLubyte ;
typedef int GLint ;
typedef int GLcontext ;


 scalar_t__* ALPHA_ADDR (int ,int ) ;

void gl_write_mono_alpha_span( GLcontext* ctx, GLuint n, GLint x, GLint y,
                               GLubyte alpha, GLubyte mask[] )
{
   GLubyte *aptr = ALPHA_ADDR( x, y );
   GLuint i;

   if (mask) {
      for (i=0;i<n;i++) {
         if (mask[i]) {
            *aptr = alpha;
         }
         aptr++;
      }
   }
   else {
      for (i=0;i<n;i++) {
         *aptr++ = alpha;
      }
   }
}
