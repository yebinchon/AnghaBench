
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NewState; int * Buffer; } ;
typedef int GLframebuffer ;
typedef TYPE_1__ GLcontext ;


 int NEW_ALL ;
 int gl_update_state (TYPE_1__*) ;

void gl_make_current( GLcontext *ctx, GLframebuffer *buffer )
{
   if (ctx && buffer) {

      ctx->Buffer = buffer;
      ctx->NewState = NEW_ALL;
      gl_update_state( ctx );
   }
}
