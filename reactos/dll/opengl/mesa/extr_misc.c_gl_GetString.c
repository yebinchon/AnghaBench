
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* (* RendererString ) () ;} ;
struct TYPE_7__ {TYPE_1__ Driver; } ;
typedef int const GLubyte ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;



 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;



 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 char* stub1 () ;

const GLubyte *gl_GetString( GLcontext *ctx, GLenum name )
{
   static char renderer[1000];
   static char *vendor = "Brian Paul & ReactOS Developers";
   static char *version = "1.1";
   static char *extensions = "GL_EXT_paletted_texture GL_EXT_bgra GL_WIN_swap_hint";

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetString" );
      return (GLubyte *) 0;
   }

   switch (name) {
      case 129:
         return (GLubyte *) vendor;
      case 130:
         strcpy(renderer, "Mesa");
         if (ctx->Driver.RendererString) {
            strcat(renderer, " ");
            strcat(renderer, (*ctx->Driver.RendererString)());
         }
         return (GLubyte *) renderer;
      case 128:
         return (GLubyte *) version;
      case 131:
         return (GLubyte *) extensions;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetString" );
         return (GLubyte *) 0;
   }
}
