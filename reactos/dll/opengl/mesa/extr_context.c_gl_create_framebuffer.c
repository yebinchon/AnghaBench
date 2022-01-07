
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Visual; } ;
typedef int GLvisual ;
typedef TYPE_1__ GLframebuffer ;


 scalar_t__ calloc (int,int) ;

GLframebuffer *gl_create_framebuffer( GLvisual *visual )
{
   GLframebuffer *buffer;

   buffer = (GLframebuffer *) calloc( 1, sizeof(GLframebuffer) );
   if (!buffer) {
      return ((void*)0);
   }

   buffer->Visual = visual;

   return buffer;
}
