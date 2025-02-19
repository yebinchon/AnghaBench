
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_texture_object {TYPE_1__** Image; } ;
struct TYPE_2__ {size_t MaxLog2; } ;
typedef float GLubyte ;
typedef size_t GLint ;
typedef size_t GLfloat ;


 size_t CLAMP (size_t,int,size_t) ;
 size_t frac (size_t) ;
 int sample_1d_nearest (struct gl_texture_object const*,TYPE_1__*,size_t,float*,float*,float*,float*) ;

__attribute__((used)) static void
sample_1d_nearest_mipmap_linear( const struct gl_texture_object *tObj,
                                 GLfloat s, GLfloat lambda,
                                 GLubyte *red, GLubyte *green,
                                 GLubyte *blue, GLubyte *alpha )
{
   GLint max = tObj->Image[0]->MaxLog2;

   if (lambda>=max) {
      sample_1d_nearest( tObj, tObj->Image[max],
                         s, red, green, blue, alpha );
   }
   else {
      GLubyte red0, green0, blue0, alpha0;
      GLubyte red1, green1, blue1, alpha1;
      GLfloat f = frac(lambda);
      GLint level = (GLint) (lambda + 1.0F);
      level = CLAMP( level, 1, max );
      sample_1d_nearest( tObj, tObj->Image[level-1],
                         s, &red0, &green0, &blue0, &alpha0 );
      sample_1d_nearest( tObj, tObj->Image[level],
                         s, &red1, &green1, &blue1, &alpha1 );
      *red = (1.0F-f)*red0 + f*red1;
      *green = (1.0F-f)*green0 + f*green1;
      *blue = (1.0F-f)*blue0 + f*blue1;
      *alpha = (1.0F-f)*alpha0 + f*alpha1;
   }
}
