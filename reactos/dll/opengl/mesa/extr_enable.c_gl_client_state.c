
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* EdgeFlagEnabled; void* TexCoordEnabled; void* IndexEnabled; void* ColorEnabled; void* NormalEnabled; void* VertexEnabled; } ;
struct TYPE_6__ {TYPE_1__ Array; } ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;
typedef void* GLboolean ;





 int GL_INVALID_ENUM ;



 int gl_error (TYPE_2__*,int ,char*) ;

void gl_client_state( GLcontext *ctx, GLenum cap, GLboolean state )
{
   switch (cap) {
      case 128:
         ctx->Array.VertexEnabled = state;
         break;
      case 130:
         ctx->Array.NormalEnabled = state;
         break;
      case 133:
         ctx->Array.ColorEnabled = state;
         break;
      case 131:
         ctx->Array.IndexEnabled = state;
         break;
      case 129:
         ctx->Array.TexCoordEnabled = state;
         break;
      case 132:
         ctx->Array.EdgeFlagEnabled = state;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glEnable/DisableClientState" );
   }
}
