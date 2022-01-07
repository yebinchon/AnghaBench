
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t MapItoIsize; size_t MapStoSsize; int MapItoRsize; int MapItoGsize; int MapItoBsize; int MapItoAsize; int MapRtoRsize; int MapGtoGsize; int MapBtoBsize; int MapAtoAsize; int MapAtoA; int MapBtoB; int MapGtoG; int MapRtoR; int MapItoA; int MapItoB; int MapItoG; int MapItoR; int * MapStoS; int * MapItoI; } ;
struct TYPE_7__ {TYPE_1__ Pixel; } ;
typedef size_t GLuint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int MEMCPY (int *,int ,int) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_GetPixelMapfv( GLcontext *ctx, GLenum map, GLfloat *values )
{
   GLuint i;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetPixelMapfv" );
      return;
   }
   switch (map) {
      case 131:
         for (i=0;i<ctx->Pixel.MapItoIsize;i++) {
     values[i] = (GLfloat) ctx->Pixel.MapItoI[i];
  }
  break;
      case 128:
         for (i=0;i<ctx->Pixel.MapStoSsize;i++) {
     values[i] = (GLfloat) ctx->Pixel.MapStoS[i];
  }
  break;
      case 130:
         MEMCPY(values,ctx->Pixel.MapItoR,ctx->Pixel.MapItoRsize*sizeof(GLfloat));
  break;
      case 132:
         MEMCPY(values,ctx->Pixel.MapItoG,ctx->Pixel.MapItoGsize*sizeof(GLfloat));
  break;
      case 133:
         MEMCPY(values,ctx->Pixel.MapItoB,ctx->Pixel.MapItoBsize*sizeof(GLfloat));
  break;
      case 134:
         MEMCPY(values,ctx->Pixel.MapItoA,ctx->Pixel.MapItoAsize*sizeof(GLfloat));
  break;
      case 129:
         MEMCPY(values,ctx->Pixel.MapRtoR,ctx->Pixel.MapRtoRsize*sizeof(GLfloat));
  break;
      case 135:
         MEMCPY(values,ctx->Pixel.MapGtoG,ctx->Pixel.MapGtoGsize*sizeof(GLfloat));
  break;
      case 136:
         MEMCPY(values,ctx->Pixel.MapBtoB,ctx->Pixel.MapBtoBsize*sizeof(GLfloat));
  break;
      case 137:
         MEMCPY(values,ctx->Pixel.MapAtoA,ctx->Pixel.MapAtoAsize*sizeof(GLfloat));
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetPixelMapfv" );
   }
}
