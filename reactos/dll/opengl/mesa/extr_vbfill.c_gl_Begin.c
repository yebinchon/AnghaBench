
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct vertex_buffer {int Findex; int Index; int Fcolor; int Color; scalar_t__ MonoColor; int MonoNormal; scalar_t__ Count; scalar_t__ Start; } ;
struct pixel_buffer {int dummy; } ;
struct TYPE_22__ {int TwoSide; } ;
struct TYPE_23__ {TYPE_5__ Model; int Enabled; } ;
struct TYPE_21__ {int Index; int * ByteColor; } ;
struct TYPE_20__ {int (* Index ) (TYPE_7__*,int ) ;int (* Color ) (TYPE_7__*,int ,int ,int ,int ) ;int (* Begin ) (TYPE_7__*,int) ;} ;
struct TYPE_18__ {scalar_t__ Vertex3f; } ;
struct TYPE_24__ {int Primitive; int LightTwoSide; TYPE_6__ Light; int StippleCounter; TYPE_4__ Current; TYPE_3__ Driver; TYPE_2__* Visual; scalar_t__ MonoPixels; TYPE_1__ Exec; scalar_t__ NewState; scalar_t__ NewProjectionMatrix; scalar_t__ NewModelViewMatrix; struct pixel_buffer* PB; struct vertex_buffer* VB; } ;
struct TYPE_19__ {scalar_t__ RGBAflag; } ;
typedef int GLubyte ;
typedef int GLenum ;
typedef TYPE_7__ GLcontext ;


 int GL_BITMAP ;
 void* GL_FALSE ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int const GL_LINE ;



 int const GL_POINT ;







 int GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_7__*) ;
 int PB_INIT (struct pixel_buffer*,int const) ;
 int begin_time ;
 int gl_analyze_modelview_matrix (TYPE_7__*) ;
 int gl_analyze_projection_matrix (TYPE_7__*) ;
 int gl_error (TYPE_7__*,int ,char*) ;
 int gl_set_vertex_function (TYPE_7__*) ;
 int gl_time () ;
 int gl_update_state (TYPE_7__*) ;
 scalar_t__ gl_vertex3f_nop ;
 int stub1 (TYPE_7__*,int) ;
 int stub2 (TYPE_7__*,int ,int ,int ,int ) ;
 int stub3 (TYPE_7__*,int ) ;

void gl_Begin( GLcontext *ctx, GLenum p )
{
   struct vertex_buffer *VB = ctx->VB;
   struct pixel_buffer *PB = ctx->PB;




   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glBegin" );
      return;
   }
   if (ctx->NewModelViewMatrix) {
      gl_analyze_modelview_matrix(ctx);
   }
   if (ctx->NewProjectionMatrix) {
      gl_analyze_projection_matrix(ctx);
   }
   if (ctx->NewState) {
      gl_update_state(ctx);
   }
   else if (ctx->Exec.Vertex3f==gl_vertex3f_nop) {
      gl_set_vertex_function(ctx);
   }

   if (ctx->Driver.Begin) {
      (*ctx->Driver.Begin)( ctx, p );
   }

   ctx->Primitive = p;
   VB->Start = VB->Count = 0;

   VB->MonoColor = ctx->MonoPixels;
   VB->MonoNormal = GL_TRUE;
   if (VB->MonoColor) {



      if (ctx->Visual->RGBAflag) {
         GLubyte r = ctx->Current.ByteColor[0];
         GLubyte g = ctx->Current.ByteColor[1];
         GLubyte b = ctx->Current.ByteColor[2];
         GLubyte a = ctx->Current.ByteColor[3];
         (*ctx->Driver.Color)( ctx, r, g, b, a );
      }
      else {
         (*ctx->Driver.Index)( ctx, ctx->Current.Index );
      }
   }


   VB->Color = VB->Fcolor;
   VB->Index = VB->Findex;

   switch (ctx->Primitive) {
      case 134:
  ctx->LightTwoSide = GL_FALSE;
  PB_INIT( PB, GL_POINT );
  break;
      case 137:
      case 135:
      case 136:
  ctx->LightTwoSide = GL_FALSE;
  ctx->StippleCounter = 0;
  PB_INIT( PB, GL_LINE );
         break;
      case 130:
      case 128:
      case 129:
      case 132:
      case 131:
      case 133:
  ctx->LightTwoSide = ctx->Light.Enabled && ctx->Light.Model.TwoSide;
  PB_INIT( PB, 133 );
         break;
      default:
  gl_error( ctx, GL_INVALID_ENUM, "glBegin" );
  ctx->Primitive = GL_BITMAP;
   }
}
