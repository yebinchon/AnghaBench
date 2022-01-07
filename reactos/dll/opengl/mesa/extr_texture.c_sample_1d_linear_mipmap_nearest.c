
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_texture_object {TYPE_1__** Image; } ;
struct TYPE_2__ {scalar_t__ WidthLog2; } ;
typedef int GLubyte ;
typedef scalar_t__ GLint ;
typedef float GLfloat ;


 int sample_1d_linear (struct gl_texture_object const*,TYPE_1__*,float,int *,int *,int *,int *) ;

__attribute__((used)) static void
sample_1d_linear_mipmap_nearest( const struct gl_texture_object *tObj,
                                 GLfloat s, GLfloat lambda,
                                 GLubyte *red, GLubyte *green,
                                 GLubyte *blue, GLubyte *alpha )
{
   GLint level;
   if (lambda<=0.5F) {
      level = 0;
   }
   else {
      GLint widthlog2 = tObj->Image[0]->WidthLog2;
      level = (GLint) (lambda + 0.499999F);
      if (level>widthlog2 ) {
         level = widthlog2;
      }
   }
   sample_1d_linear( tObj, tObj->Image[level],
                     s, red, green, blue, alpha );
}
