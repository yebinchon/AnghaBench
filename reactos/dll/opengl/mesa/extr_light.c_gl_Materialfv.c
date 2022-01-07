
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ColorMaterialBitmask; scalar_t__ ColorMaterialEnabled; } ;
struct TYPE_7__ {TYPE_1__ Light; } ;
typedef int GLuint ;
typedef int GLfloat ;
typedef scalar_t__ GLenum ;
typedef TYPE_2__ GLcontext ;




 scalar_t__ GL_BACK ;



 scalar_t__ GL_FRONT ;
 scalar_t__ GL_FRONT_AND_BACK ;
 int GL_INVALID_ENUM ;


 int gl_error (TYPE_2__*,int ,char*) ;
 int gl_material_bitmask (scalar_t__,scalar_t__) ;
 int gl_set_material (TYPE_2__*,int ,int const*) ;

void gl_Materialfv( GLcontext *ctx,
                    GLenum face, GLenum pname, const GLfloat *params )
{
   GLuint bitmask;


   if (face!=GL_FRONT && face!=GL_BACK && face!=GL_FRONT_AND_BACK) {
      gl_error( ctx, GL_INVALID_ENUM, "glMaterial(face)" );
      return;
   }
   switch (pname) {
      case 130:
      case 134:
      case 131:
      case 128:
      case 129:
      case 133:
      case 132:

         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glMaterial(pname)" );
         return;
   }


   bitmask = gl_material_bitmask( face, pname );

   if (ctx->Light.ColorMaterialEnabled) {


      bitmask &= ~ctx->Light.ColorMaterialBitmask;
   }

   gl_set_material( ctx, bitmask, params );
}
