
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double RedScale; double GreenScale; double BlueScale; double AlphaScale; float InvRedScale; float InvGreenScale; float InvBlueScale; float InvAlphaScale; int RedBits; int GreenBits; int BlueBits; int AlphaBits; int IndexBits; int DepthBits; int AccumBits; int StencilBits; void* BackAlphaEnabled; void* FrontAlphaEnabled; void* EightBitColor; void* DBflag; void* RGBAflag; } ;
typedef TYPE_1__ GLvisual ;
typedef int GLubyte ;
typedef int GLstencil ;
typedef int GLint ;
typedef double GLfloat ;
typedef int GLdepth ;
typedef void* GLboolean ;
typedef int GLaccum ;


 void* GL_FALSE ;
 void* GL_TRUE ;
 int assert (int) ;
 scalar_t__ calloc (int,int) ;

GLvisual *gl_create_visual( GLboolean rgb_flag,
                            GLboolean alpha_flag,
                            GLboolean db_flag,
                            GLint depth_bits,
                            GLint stencil_bits,
                            GLint accum_bits,
                            GLint index_bits,
                            GLfloat red_scale,
                            GLfloat green_scale,
                            GLfloat blue_scale,
                            GLfloat alpha_scale,
                            GLint red_bits,
                            GLint green_bits,
                            GLint blue_bits,
                            GLint alpha_bits )
{
   GLvisual *vis;


   assert( red_scale<=255.0 );
   assert( green_scale<=255.0 );
   assert( blue_scale<=255.0 );
   assert( alpha_scale<=255.0 );

   if (depth_bits > 8*sizeof(GLdepth)) {

      return ((void*)0);
   }
   if (stencil_bits > 8*sizeof(GLstencil)) {

      return ((void*)0);
   }
   if (accum_bits > 8*sizeof(GLaccum)) {

      return ((void*)0);
   }

   vis = (GLvisual *) calloc( 1, sizeof(GLvisual) );
   if (!vis) {
      return ((void*)0);
   }

   vis->RGBAflag = rgb_flag;
   vis->DBflag = db_flag;
   vis->RedScale = red_scale;
   vis->GreenScale = green_scale;
   vis->BlueScale = blue_scale;
   vis->AlphaScale = alpha_scale;
   if (red_scale) {
      vis->InvRedScale = 1.0F / red_scale;
   }
   if (green_scale) {
      vis->InvGreenScale = 1.0F / green_scale;
   }
   if (blue_scale) {
      vis->InvBlueScale = 1.0F / blue_scale;
   }
   if (alpha_scale) {
      vis->InvAlphaScale = 1.0F / alpha_scale;
   }

   vis->RedBits = red_bits;
   vis->GreenBits = green_bits;
   vis->BlueBits = blue_bits;
   vis->AlphaBits = alpha_flag ? 8*sizeof(GLubyte) : alpha_bits;

   vis->IndexBits = index_bits;
   vis->DepthBits = (depth_bits>0) ? 8*sizeof(GLdepth) : 0;
   vis->AccumBits = (accum_bits>0) ? 8*sizeof(GLaccum) : 0;
   vis->StencilBits = (stencil_bits>0) ? 8*sizeof(GLstencil) : 0;

   if (red_scale==255.0F && green_scale==255.0F
       && blue_scale==255.0F && alpha_scale==255.0F) {
      vis->EightBitColor = GL_TRUE;
   }
   else {
      vis->EightBitColor = GL_FALSE;
   }


   if (alpha_flag) {
      vis->FrontAlphaEnabled = GL_TRUE;
      if (db_flag) {
         vis->BackAlphaEnabled = GL_TRUE;
      }
   }

   return vis;
}
