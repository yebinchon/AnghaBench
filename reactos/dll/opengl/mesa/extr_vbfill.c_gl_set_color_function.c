
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int Color4ubv; int Color4ub; int Color4fv; int Color4f; int Color3fv; int Color3f; } ;
struct TYPE_10__ {int Color4ubv; int Color4ub; int Color4fv; int Color4f; int Color3fv; int Color3f; } ;
struct TYPE_8__ {scalar_t__ ColorMaterialEnabled; } ;
struct TYPE_12__ {TYPE_4__ Exec; TYPE_3__ API; int CompileFlag; TYPE_2__* Visual; TYPE_1__ Light; } ;
struct TYPE_9__ {scalar_t__ EightBitColor; } ;
typedef TYPE_5__ GLcontext ;


 int ASSERT (int) ;
 int INSIDE_BEGIN_END (TYPE_5__*) ;
 int gl_Color3f ;
 int gl_Color3f8bit ;
 int gl_Color3fv ;
 int gl_Color3fv8bit ;
 int gl_Color4f ;
 int gl_Color4f8bit ;
 int gl_Color4fv ;
 int gl_Color4fv8bit ;
 int gl_Color4ub ;
 int gl_Color4ub8bit ;
 int gl_Color4ubv ;
 int gl_Color4ubv8bit ;
 int gl_ColorMat3f ;
 int gl_ColorMat3fv ;
 int gl_ColorMat4f ;
 int gl_ColorMat4fv ;
 int gl_ColorMat4ub ;
 int gl_ColorMat4ubv ;

void gl_set_color_function( GLcontext *ctx )
{
   ASSERT( !INSIDE_BEGIN_END(ctx) );

   if (ctx->Light.ColorMaterialEnabled) {
      ctx->Exec.Color3f = gl_ColorMat3f;
      ctx->Exec.Color3fv = gl_ColorMat3fv;
      ctx->Exec.Color4f = gl_ColorMat4f;
      ctx->Exec.Color4fv = gl_ColorMat4fv;
      ctx->Exec.Color4ub = gl_ColorMat4ub;
      ctx->Exec.Color4ubv = gl_ColorMat4ubv;
   }
   else if (ctx->Visual->EightBitColor) {
      ctx->Exec.Color3f = gl_Color3f8bit;
      ctx->Exec.Color3fv = gl_Color3fv8bit;
      ctx->Exec.Color4f = gl_Color4f8bit;
      ctx->Exec.Color4fv = gl_Color4fv8bit;
      ctx->Exec.Color4ub = gl_Color4ub8bit;
      ctx->Exec.Color4ubv = gl_Color4ubv8bit;
   }
   else {
      ctx->Exec.Color3f = gl_Color3f;
      ctx->Exec.Color3fv = gl_Color3fv;
      ctx->Exec.Color4f = gl_Color4f;
      ctx->Exec.Color4fv = gl_Color4fv;
      ctx->Exec.Color4ub = gl_Color4ub;
      ctx->Exec.Color4ubv = gl_Color4ubv;
   }
   if (!ctx->CompileFlag) {
      ctx->API.Color3f = ctx->Exec.Color3f;
      ctx->API.Color3fv = ctx->Exec.Color3fv;
      ctx->API.Color4f = ctx->Exec.Color4f;
      ctx->API.Color4fv = ctx->Exec.Color4fv;
      ctx->API.Color4ub = ctx->Exec.Color4ub;
      ctx->API.Color4ubv = ctx->Exec.Color4ubv;
   }
}
