
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int MapItoIsize; int MapStoSsize; size_t MapItoRsize; size_t MapItoGsize; size_t MapItoBsize; size_t MapItoAsize; size_t MapRtoRsize; size_t MapGtoGsize; size_t MapBtoBsize; size_t MapAtoAsize; int * MapAtoA; int * MapBtoB; int * MapGtoG; int * MapRtoR; int * MapItoA; int * MapItoB; int * MapItoG; int * MapItoR; int MapStoS; int MapItoI; } ;
struct TYPE_7__ {TYPE_1__ Pixel; } ;
typedef size_t GLuint ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;


 size_t FLOAT_TO_UINT (int ) ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int MEMCPY (size_t*,int ,int) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_GetPixelMapuiv( GLcontext *ctx, GLenum map, GLuint *values )
{
   GLuint i;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetPixelMapfv" );
      return;
   }
   switch (map) {
      case 131:
         MEMCPY(values, ctx->Pixel.MapItoI, ctx->Pixel.MapItoIsize*sizeof(GLint));
  break;
      case 128:
         MEMCPY(values, ctx->Pixel.MapStoS, ctx->Pixel.MapStoSsize*sizeof(GLint));
  break;
      case 130:
  for (i=0;i<ctx->Pixel.MapItoRsize;i++) {
     values[i] = FLOAT_TO_UINT( ctx->Pixel.MapItoR[i] );
  }
  break;
      case 132:
  for (i=0;i<ctx->Pixel.MapItoGsize;i++) {
     values[i] = FLOAT_TO_UINT( ctx->Pixel.MapItoG[i] );
  }
  break;
      case 133:
  for (i=0;i<ctx->Pixel.MapItoBsize;i++) {
     values[i] = FLOAT_TO_UINT( ctx->Pixel.MapItoB[i] );
  }
  break;
      case 134:
  for (i=0;i<ctx->Pixel.MapItoAsize;i++) {
     values[i] = FLOAT_TO_UINT( ctx->Pixel.MapItoA[i] );
  }
  break;
      case 129:
  for (i=0;i<ctx->Pixel.MapRtoRsize;i++) {
     values[i] = FLOAT_TO_UINT( ctx->Pixel.MapRtoR[i] );
  }
  break;
      case 135:
  for (i=0;i<ctx->Pixel.MapGtoGsize;i++) {
     values[i] = FLOAT_TO_UINT( ctx->Pixel.MapGtoG[i] );
  }
  break;
      case 136:
  for (i=0;i<ctx->Pixel.MapBtoBsize;i++) {
     values[i] = FLOAT_TO_UINT( ctx->Pixel.MapBtoB[i] );
  }
  break;
      case 137:
  for (i=0;i<ctx->Pixel.MapAtoAsize;i++) {
     values[i] = FLOAT_TO_UINT( ctx->Pixel.MapAtoA[i] );
  }
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetPixelMapfv" );
   }
}
