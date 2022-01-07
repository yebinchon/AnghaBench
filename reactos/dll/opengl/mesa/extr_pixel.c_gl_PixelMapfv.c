
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void** MapAtoA; scalar_t__ MapAtoAsize; void** MapBtoB; scalar_t__ MapBtoBsize; void** MapGtoG; scalar_t__ MapGtoGsize; void** MapRtoR; scalar_t__ MapRtoRsize; void** MapItoA; scalar_t__ MapItoAsize; void** MapItoB; scalar_t__ MapItoBsize; void** MapItoG; scalar_t__ MapItoGsize; void** MapItoR; scalar_t__ MapItoRsize; scalar_t__* MapItoI; scalar_t__ MapItoIsize; scalar_t__* MapStoS; scalar_t__ MapStoSsize; } ;
struct TYPE_7__ {TYPE_1__ Pixel; } ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;
typedef int GLboolean ;


 void* CLAMP (int const,double,double) ;
 int GL_FALSE ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 int GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 scalar_t__ MAX_PIXEL_MAP_TABLE ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_PixelMapfv( GLcontext *ctx,
                    GLenum map, GLint mapsize, const GLfloat *values )
{
   GLuint i;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glPixelMapfv" );
      return;
   }

   if (mapsize<0 || mapsize>MAX_PIXEL_MAP_TABLE) {
      gl_error( ctx, GL_INVALID_VALUE, "glPixelMapfv(mapsize)" );
      return;
   }

   if (map>=128 && map<=134) {

      GLuint p;
      GLboolean ok = GL_FALSE;
      for (p=1; p<=MAX_PIXEL_MAP_TABLE; p=p<<1) {
  if ( (p&mapsize) == p ) {
     ok = GL_TRUE;
     break;
  }
      }
      if (!ok) {
  gl_error( ctx, GL_INVALID_VALUE, "glPixelMapfv(mapsize)" );
         return;
      }
   }

   switch (map) {
      case 128:
         ctx->Pixel.MapStoSsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapStoS[i] = (GLint) values[i];
  }
  break;
      case 131:
         ctx->Pixel.MapItoIsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapItoI[i] = (GLint) values[i];
  }
  break;
      case 130:
         ctx->Pixel.MapItoRsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapItoR[i] = CLAMP( values[i], 0.0, 1.0 );
  }
  break;
      case 132:
         ctx->Pixel.MapItoGsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapItoG[i] = CLAMP( values[i], 0.0, 1.0 );
  }
  break;
      case 133:
         ctx->Pixel.MapItoBsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapItoB[i] = CLAMP( values[i], 0.0, 1.0 );
  }
  break;
      case 134:
         ctx->Pixel.MapItoAsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapItoA[i] = CLAMP( values[i], 0.0, 1.0 );
  }
  break;
      case 129:
         ctx->Pixel.MapRtoRsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapRtoR[i] = CLAMP( values[i], 0.0, 1.0 );
  }
  break;
      case 135:
         ctx->Pixel.MapGtoGsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapGtoG[i] = CLAMP( values[i], 0.0, 1.0 );
  }
  break;
      case 136:
         ctx->Pixel.MapBtoBsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapBtoB[i] = CLAMP( values[i], 0.0, 1.0 );
  }
  break;
      case 137:
         ctx->Pixel.MapAtoAsize = mapsize;
         for (i=0;i<mapsize;i++) {
     ctx->Pixel.MapAtoA[i] = CLAMP( values[i], 0.0, 1.0 );
  }
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glPixelMapfv(map)" );
   }
}
