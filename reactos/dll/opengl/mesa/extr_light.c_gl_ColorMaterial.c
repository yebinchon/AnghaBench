
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ColorMaterialFace; int ColorMaterialMode; int ColorMaterialBitmask; } ;
struct TYPE_7__ {TYPE_1__ Light; } ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;

 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int gl_material_bitmask (int,int) ;

void gl_ColorMaterial( GLcontext *ctx, GLenum face, GLenum mode )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glColorMaterial" );
      return;
   }
   switch (face) {
      case 130:
      case 133:
      case 129:
         ctx->Light.ColorMaterialFace = face;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glColorMaterial(face)" );
         return;
   }
   switch (mode) {
      case 131:
      case 135:
      case 132:
      case 128:
      case 134:
         ctx->Light.ColorMaterialMode = mode;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glColorMaterial(mode)" );
         return;
   }

   ctx->Light.ColorMaterialBitmask = gl_material_bitmask( face, mode );
}
