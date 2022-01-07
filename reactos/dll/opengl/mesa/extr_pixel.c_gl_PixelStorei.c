
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int RowLength; int SkipPixels; int SkipRows; int Alignment; void* LsbFirst; void* SwapBytes; } ;
struct TYPE_8__ {int RowLength; int SkipPixels; int SkipRows; int Alignment; void* LsbFirst; void* SwapBytes; } ;
struct TYPE_10__ {TYPE_2__ Unpack; TYPE_1__ Pack; } ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 void* GL_FALSE ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;






 void* GL_TRUE ;






 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int update_drawpixels_state (TYPE_3__*) ;

void gl_PixelStorei( GLcontext *ctx, GLenum pname, GLint param )
{


   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glPixelStore" );
      return;
   }

   switch (pname) {
      case 134:
         ctx->Pack.SwapBytes = param ? GL_TRUE : GL_FALSE;
  break;
      case 138:
         ctx->Pack.LsbFirst = param ? GL_TRUE : GL_FALSE;
  break;
      case 137:
  if (param<0) {
     gl_error( ctx, GL_INVALID_VALUE, "glPixelStore(param)" );
  }
  else {
     ctx->Pack.RowLength = param;
  }
  break;
      case 136:
  if (param<0) {
     gl_error( ctx, GL_INVALID_VALUE, "glPixelStore(param)" );
  }
  else {
     ctx->Pack.SkipPixels = param;
  }
  break;
      case 135:
  if (param<0) {
     gl_error( ctx, GL_INVALID_VALUE, "glPixelStore(param)" );
  }
  else {
     ctx->Pack.SkipRows = param;
  }
  break;
      case 139:
         if (param==1 || param==2 || param==4 || param==8) {
     ctx->Pack.Alignment = param;
  }
  else {
     gl_error( ctx, GL_INVALID_VALUE, "glPixelStore(param)" );
  }
  break;
      case 128:
  ctx->Unpack.SwapBytes = param ? GL_TRUE : GL_FALSE;
         break;
      case 132:
  ctx->Unpack.LsbFirst = param ? GL_TRUE : GL_FALSE;
  break;
      case 131:
  if (param<0) {
     gl_error( ctx, GL_INVALID_VALUE, "glPixelStore(param)" );
  }
  else {
     ctx->Unpack.RowLength = param;
  }
  break;
      case 130:
  if (param<0) {
     gl_error( ctx, GL_INVALID_VALUE, "glPixelStore(param)" );
  }
  else {
     ctx->Unpack.SkipPixels = param;
  }
  break;
      case 129:
  if (param<0) {
     gl_error( ctx, GL_INVALID_VALUE, "glPixelStore(param)" );
  }
  else {
     ctx->Unpack.SkipRows = param;
  }
  break;
      case 133:
         if (param==1 || param==2 || param==4 || param==8) {
     ctx->Unpack.Alignment = param;
  }
  else {
     gl_error( ctx, GL_INVALID_VALUE, "glPixelStore" );
  }
  break;
      default:
  gl_error( ctx, GL_INVALID_ENUM, "glPixelStore" );
   }
   update_drawpixels_state( ctx );
}
