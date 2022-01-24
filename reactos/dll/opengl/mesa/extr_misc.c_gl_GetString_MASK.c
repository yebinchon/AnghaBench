#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* (* RendererString ) () ;} ;
struct TYPE_7__ {TYPE_1__ Driver; } ;
typedef  int /*<<< orphan*/  const GLubyte ;
typedef  int GLenum ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
#define  GL_EXTENSIONS 131 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
 int /*<<< orphan*/  GL_INVALID_OPERATION ; 
#define  GL_RENDERER 130 
#define  GL_VENDOR 129 
#define  GL_VERSION 128 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 () ; 

const GLubyte *FUNC5( GLcontext *ctx, GLenum name )
{
   static char renderer[1000];
   static char *vendor = "Brian Paul & ReactOS Developers";
   static char *version = "1.1";
   static char *extensions = "GL_EXT_paletted_texture GL_EXT_bgra GL_WIN_swap_hint";

   if (FUNC0(ctx)) {
      FUNC1( ctx, GL_INVALID_OPERATION, "glGetString" );
      return (GLubyte *) 0;
   }

   switch (name) {
      case GL_VENDOR:
         return (GLubyte *) vendor;
      case GL_RENDERER:
         FUNC3(renderer, "Mesa");
         if (ctx->Driver.RendererString) {
            FUNC2(renderer, " ");
            FUNC2(renderer, (*ctx->Driver.RendererString)());
         }
         return (GLubyte *) renderer;
      case GL_VERSION:
         return (GLubyte *) version;
      case GL_EXTENSIONS:
         return (GLubyte *) extensions;
      default:
         FUNC1( ctx, GL_INVALID_ENUM, "glGetString" );
         return (GLubyte *) 0;
   }
}