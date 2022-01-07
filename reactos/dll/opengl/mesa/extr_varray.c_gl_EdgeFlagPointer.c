
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * EdgeFlagPtr; scalar_t__ EdgeFlagStrideB; scalar_t__ EdgeFlagStride; } ;
struct TYPE_6__ {TYPE_1__ Array; } ;
typedef scalar_t__ GLsizei ;
typedef TYPE_2__ GLcontext ;
typedef int GLboolean ;


 int GL_INVALID_VALUE ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_EdgeFlagPointer( GLcontext *ctx,
                         GLsizei stride, const GLboolean *ptr )
{
   if (stride<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glEdgeFlagPointer(stride)" );
      return;
   }
   ctx->Array.EdgeFlagStride = stride;
   ctx->Array.EdgeFlagStrideB = stride ? stride : sizeof(GLboolean);
   ctx->Array.EdgeFlagPtr = (GLboolean *) ptr;
}
