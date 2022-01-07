
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {void* Vertex3fv; int Vertex4f; void* Vertex3f; void* Vertex2f; } ;
struct TYPE_13__ {void* Vertex3fv; int Vertex4f; void* Vertex3f; void* Vertex2f; } ;
struct TYPE_12__ {scalar_t__ Enabled; } ;
struct TYPE_10__ {scalar_t__ Enabled; } ;
struct TYPE_15__ {scalar_t__ RenderMode; TYPE_6__ Exec; TYPE_5__ API; int CompileFlag; TYPE_4__ Light; TYPE_3__* VB; TYPE_2__ Texture; scalar_t__ NeedNormals; TYPE_1__* Visual; } ;
struct TYPE_11__ {int TexCoordSize; } ;
struct TYPE_9__ {scalar_t__ RGBAflag; } ;
typedef TYPE_7__ GLcontext ;


 scalar_t__ GL_FEEDBACK ;
 void* vertex2f_color ;
 void* vertex2f_color_tex2 ;
 void* vertex2f_color_tex4 ;
 void* vertex2f_feedback ;
 void* vertex2f_index ;
 void* vertex2f_normal ;
 void* vertex2f_normal_color_tex2 ;
 void* vertex2f_normal_color_tex4 ;
 void* vertex3f_color ;
 void* vertex3f_color_tex2 ;
 void* vertex3f_color_tex4 ;
 void* vertex3f_feedback ;
 void* vertex3f_index ;
 void* vertex3f_normal ;
 void* vertex3f_normal_color_tex2 ;
 void* vertex3f_normal_color_tex4 ;
 void* vertex3fv_color ;
 void* vertex3fv_color_tex2 ;
 void* vertex3fv_color_tex4 ;
 void* vertex3fv_feedback ;
 void* vertex3fv_index ;
 void* vertex3fv_normal ;
 void* vertex3fv_normal_color_tex2 ;
 void* vertex3fv_normal_color_tex4 ;
 int vertex4 ;
 int vertex4f_feedback ;

void gl_set_vertex_function( GLcontext *ctx )
{
   if (ctx->RenderMode==GL_FEEDBACK) {
      ctx->Exec.Vertex4f = vertex4f_feedback;
      ctx->Exec.Vertex3f = vertex3f_feedback;
      ctx->Exec.Vertex2f = vertex2f_feedback;
      ctx->Exec.Vertex3fv = vertex3fv_feedback;
   }
   else {
      ctx->Exec.Vertex4f = vertex4;
      if (ctx->Visual->RGBAflag) {
         if (ctx->NeedNormals) {

            if (ctx->Texture.Enabled) {
               if (ctx->VB->TexCoordSize==2) {
                  ctx->Exec.Vertex2f = vertex2f_normal_color_tex2;
                  ctx->Exec.Vertex3f = vertex3f_normal_color_tex2;
                  ctx->Exec.Vertex3fv = vertex3fv_normal_color_tex2;
               }
               else {
                  ctx->Exec.Vertex2f = vertex2f_normal_color_tex4;
                  ctx->Exec.Vertex3f = vertex3f_normal_color_tex4;
                  ctx->Exec.Vertex3fv = vertex3fv_normal_color_tex4;
               }
            }
            else {
               ctx->Exec.Vertex2f = vertex2f_normal;
               ctx->Exec.Vertex3f = vertex3f_normal;
               ctx->Exec.Vertex3fv = vertex3fv_normal;
            }
         }
         else {

            if (ctx->Texture.Enabled) {
               if (ctx->VB->TexCoordSize==2) {
                  ctx->Exec.Vertex2f = vertex2f_color_tex2;
                  ctx->Exec.Vertex3f = vertex3f_color_tex2;
                  ctx->Exec.Vertex3fv = vertex3fv_color_tex2;
               }
               else {
                  ctx->Exec.Vertex2f = vertex2f_color_tex4;
                  ctx->Exec.Vertex3f = vertex3f_color_tex4;
                  ctx->Exec.Vertex3fv = vertex3fv_color_tex4;
               }
            }
            else {
               ctx->Exec.Vertex2f = vertex2f_color;
               ctx->Exec.Vertex3f = vertex3f_color;
               ctx->Exec.Vertex3fv = vertex3fv_color;
            }
         }
      }
      else {

         if (ctx->Light.Enabled) {
            ctx->Exec.Vertex2f = vertex2f_normal;
            ctx->Exec.Vertex3f = vertex3f_normal;
            ctx->Exec.Vertex3fv = vertex3fv_normal;
         }
         else {
            ctx->Exec.Vertex2f = vertex2f_index;
            ctx->Exec.Vertex3f = vertex3f_index;
            ctx->Exec.Vertex3fv = vertex3fv_index;
         }
      }
   }

   if (!ctx->CompileFlag) {
      ctx->API.Vertex2f = ctx->Exec.Vertex2f;
      ctx->API.Vertex3f = ctx->Exec.Vertex3f;
      ctx->API.Vertex4f = ctx->Exec.Vertex4f;
      ctx->API.Vertex3fv = ctx->Exec.Vertex3fv;
   }
}
