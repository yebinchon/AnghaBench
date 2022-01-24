#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gl_texture_object {TYPE_1__** Image; } ;
struct TYPE_2__ {size_t MaxLog2; } ;
typedef  float GLubyte ;
typedef  size_t GLint ;
typedef  size_t GLfloat ;

/* Variables and functions */
 size_t FUNC0 (size_t,int,size_t) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct gl_texture_object const*,TYPE_1__*,size_t,float*,float*,float*,float*) ; 

__attribute__((used)) static void
FUNC3( const struct gl_texture_object *tObj,
                                 GLfloat s, GLfloat lambda,
                                 GLubyte *red, GLubyte *green,
                                 GLubyte *blue, GLubyte *alpha )
{
   GLint max = tObj->Image[0]->MaxLog2;

   if (lambda>=max) {
      FUNC2( tObj, tObj->Image[max],
                         s, red, green, blue, alpha );
   }
   else {
      GLubyte red0, green0, blue0, alpha0;
      GLubyte red1, green1, blue1, alpha1;
      GLfloat f = FUNC1(lambda);
      GLint level = (GLint) (lambda + 1.0F);
      level = FUNC0( level, 1, max );
      FUNC2( tObj, tObj->Image[level-1],
                         s, &red0, &green0, &blue0, &alpha0 );
      FUNC2( tObj, tObj->Image[level],
                         s, &red1, &green1, &blue1, &alpha1 );
      *red   = (1.0F-f)*red0   + f*red1;
      *green = (1.0F-f)*green0 + f*green1;
      *blue  = (1.0F-f)*blue0  + f*blue1;
      *alpha = (1.0F-f)*alpha0 + f*alpha1;
   }
}