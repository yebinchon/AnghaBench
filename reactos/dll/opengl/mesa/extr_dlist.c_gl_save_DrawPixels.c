
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; void* e; void* i; } ;
typedef TYPE_1__ Node ;
typedef int GLvoid ;
typedef scalar_t__ GLsizei ;
typedef void* GLint ;
typedef void* GLenum ;
typedef int GLcontext ;


 int OPCODE_DRAW_PIXELS ;
 TYPE_1__* alloc_instruction (int *,int ,int) ;

void gl_save_DrawPixels( GLcontext *ctx, GLsizei width, GLsizei height,
                         GLenum format, GLenum type, const GLvoid *pixels )
{
   Node *n = alloc_instruction( ctx, OPCODE_DRAW_PIXELS, 5 );
   if (n) {
      n[1].i = (GLint) width;
      n[2].i = (GLint) height;
      n[3].e = format;
      n[4].e = type;
      n[5].data = (GLvoid *) pixels;
   }





}
