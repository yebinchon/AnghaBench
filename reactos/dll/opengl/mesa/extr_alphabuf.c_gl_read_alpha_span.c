
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef int GLcontext ;


 int * ALPHA_ADDR (int ,int ) ;

void gl_read_alpha_span( GLcontext* ctx,
                         GLuint n, GLint x, GLint y, GLubyte alpha[] )
{
   GLubyte *aptr = ALPHA_ADDR( x, y );
   GLuint i;
   for (i=0;i<n;i++) {
      alpha[i] = *aptr++;
   }
}
