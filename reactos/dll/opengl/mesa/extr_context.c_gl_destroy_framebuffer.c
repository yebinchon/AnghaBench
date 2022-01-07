
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* BackAlpha; struct TYPE_4__* FrontAlpha; struct TYPE_4__* Stencil; struct TYPE_4__* Accum; struct TYPE_4__* Depth; } ;
typedef TYPE_1__ GLframebuffer ;


 int free (TYPE_1__*) ;

void gl_destroy_framebuffer( GLframebuffer *buffer )
{
   if (buffer) {
      if (buffer->Depth) {
         free( buffer->Depth );
      }
      if (buffer->Accum) {
         free( buffer->Accum );
      }
      if (buffer->Stencil) {
         free( buffer->Stencil );
      }
      if (buffer->FrontAlpha) {
         free( buffer->FrontAlpha );
      }
      if (buffer->BackAlpha) {
         free( buffer->BackAlpha );
      }
      free(buffer);
   }
}
