
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct gl_viewport_attrib {int dummy; } ;
struct gl_transform_attrib {int dummy; } ;
struct gl_texture_attrib {int dummy; } ;
struct gl_stencil_attrib {int dummy; } ;
struct gl_scissor_attrib {int dummy; } ;
struct gl_polygon_attrib {int dummy; } ;
struct gl_point_attrib {int dummy; } ;
struct gl_pixel_attrib {int dummy; } ;
struct gl_list_attrib {int dummy; } ;
struct gl_line_attrib {int dummy; } ;
struct gl_light_attrib {int dummy; } ;
struct gl_hint_attrib {int dummy; } ;
struct gl_fog_attrib {int dummy; } ;
struct gl_eval_attrib {int dummy; } ;
struct gl_enable_attrib {int TexGen; int Texture; int Stencil; int Scissor; int PolygonStipple; int PolygonSmooth; int PolygonOffsetFill; int PolygonOffsetLine; int PolygonOffsetPoint; int PointSmooth; int Normalize; int Map2Vertex4; int Map2Vertex3; int Map2TextureCoord4; int Map2TextureCoord3; int Map2TextureCoord2; int Map2TextureCoord1; int Map2Normal; int Map2Index; int Map2Color4; int Map1Vertex4; int Map1Vertex3; int Map1TextureCoord4; int Map1TextureCoord3; int Map1TextureCoord2; int Map1TextureCoord1; int Map1Normal; int Map1Index; int Map1Color4; int ColorLogicOp; int IndexLogicOp; int LineStipple; int LineSmooth; int Lighting; int Fog; int Dither; int DepthTest; int CullFace; int ColorMaterial; int * ClipPlane; int Blend; int AutoNormal; int AlphaTest; } ;
struct gl_depthbuffer_attrib {int dummy; } ;
struct gl_current_attrib {int dummy; } ;
struct gl_colorbuffer_attrib {int dummy; } ;
struct gl_attrib_node {int kind; scalar_t__ data; struct gl_attrib_node* next; } ;
struct gl_accum_attrib {int dummy; } ;
struct TYPE_9__ {size_t DrawBuffer; int OffsetAny; int TexGenEnabled; int Enabled; int StippleFlag; int SmoothFlag; int OffsetFill; int OffsetLine; int OffsetPoint; int Normalize; int Map2Vertex4; int Map2Vertex3; int Map2TextureCoord4; int Map2TextureCoord3; int Map2TextureCoord2; int Map2TextureCoord1; int Map2Normal; int Map2Index; int Map2Color4; int Map1Vertex4; int Map1Vertex3; int Map1TextureCoord4; int Map1TextureCoord3; int Map1TextureCoord2; int Map1TextureCoord1; int Map1Normal; int Map1Index; int Map1Color4; int ColorLogicOpEnabled; int IndexLogicOpEnabled; int DitherFlag; int Test; int CullFlag; int ColorMaterialEnabled; int * ClipEnabled; int BlendEnabled; int AlphaEnabled; } ;
struct TYPE_8__ {size_t AttribStackDepth; int NewState; TYPE_6__ Viewport; TYPE_6__ Texture; TYPE_6__ Transform; TYPE_6__ Stencil; TYPE_6__ Scissor; TYPE_6__* PolygonStipple; TYPE_6__ Polygon; TYPE_6__ Point; TYPE_6__ Pixel; TYPE_6__ List; TYPE_6__ Line; TYPE_6__ Light; TYPE_6__ Hint; TYPE_6__ Fog; TYPE_6__ Eval; TYPE_6__ Color; TYPE_6__ Depth; TYPE_6__ Current; TYPE_6__ Accum; struct gl_attrib_node** AttribStack; } ;
typedef size_t GLuint ;
typedef TYPE_1__ GLcontext ;
 int GL_INVALID_OPERATION ;
 int GL_STACK_UNDERFLOW ;




 scalar_t__ INSIDE_BEGIN_END (TYPE_1__*) ;
 size_t MAX_CLIP_PLANES ;
 int MEMCPY (TYPE_6__*,scalar_t__,int) ;
 int NEW_ALL ;
 int free (void*) ;
 int gl_DrawBuffer (TYPE_1__*,size_t) ;
 int gl_error (TYPE_1__*,int ,char*) ;
 int gl_problem (TYPE_1__*,char*) ;

void gl_PopAttrib( GLcontext* ctx )
{
   struct gl_attrib_node *attr, *next;
   struct gl_enable_attrib *enable;
   GLuint i, oldDrawBuffer;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glPopAttrib" );
      return;
   }

   if (ctx->AttribStackDepth==0) {
      gl_error( ctx, GL_STACK_UNDERFLOW, "glPopAttrib" );
      return;
   }

   ctx->AttribStackDepth--;
   attr = ctx->AttribStack[ctx->AttribStackDepth];

   while (attr) {
      switch (attr->kind) {
         case 147:
            MEMCPY( &ctx->Accum, attr->data, sizeof(struct gl_accum_attrib) );
            break;
         case 146:
     oldDrawBuffer = ctx->Color.DrawBuffer;
            MEMCPY( &ctx->Color, attr->data,
      sizeof(struct gl_colorbuffer_attrib) );
     if (ctx->Color.DrawBuffer != oldDrawBuffer) {
        gl_DrawBuffer(ctx, ctx->Color.DrawBuffer);
            }
            break;
         case 145:
            MEMCPY( &ctx->Current, attr->data,
      sizeof(struct gl_current_attrib) );
            break;
         case 144:
            MEMCPY( &ctx->Depth, attr->data,
      sizeof(struct gl_depthbuffer_attrib) );
            break;
         case 143:
            enable = (struct gl_enable_attrib *) attr->data;
            ctx->Color.AlphaEnabled = enable->AlphaTest;
            ctx->Transform.Normalize = enable->AutoNormal;
            ctx->Color.BlendEnabled = enable->Blend;
     for (i=0;i<MAX_CLIP_PLANES;i++) {
               ctx->Transform.ClipEnabled[i] = enable->ClipPlane[i];
     }
     ctx->Light.ColorMaterialEnabled = enable->ColorMaterial;
     ctx->Polygon.CullFlag = enable->CullFace;
     ctx->Depth.Test = enable->DepthTest;
     ctx->Color.DitherFlag = enable->Dither;
     ctx->Fog.Enabled = enable->Fog;
     ctx->Light.Enabled = enable->Lighting;
     ctx->Line.SmoothFlag = enable->LineSmooth;
     ctx->Line.StippleFlag = enable->LineStipple;
     ctx->Color.IndexLogicOpEnabled = enable->IndexLogicOp;
     ctx->Color.ColorLogicOpEnabled = enable->ColorLogicOp;
     ctx->Eval.Map1Color4 = enable->Map1Color4;
     ctx->Eval.Map1Index = enable->Map1Index;
     ctx->Eval.Map1Normal = enable->Map1Normal;
     ctx->Eval.Map1TextureCoord1 = enable->Map1TextureCoord1;
     ctx->Eval.Map1TextureCoord2 = enable->Map1TextureCoord2;
     ctx->Eval.Map1TextureCoord3 = enable->Map1TextureCoord3;
     ctx->Eval.Map1TextureCoord4 = enable->Map1TextureCoord4;
     ctx->Eval.Map1Vertex3 = enable->Map1Vertex3;
     ctx->Eval.Map1Vertex4 = enable->Map1Vertex4;
     ctx->Eval.Map2Color4 = enable->Map2Color4;
     ctx->Eval.Map2Index = enable->Map2Index;
     ctx->Eval.Map2Normal = enable->Map2Normal;
     ctx->Eval.Map2TextureCoord1 = enable->Map2TextureCoord1;
     ctx->Eval.Map2TextureCoord2 = enable->Map2TextureCoord2;
     ctx->Eval.Map2TextureCoord3 = enable->Map2TextureCoord3;
     ctx->Eval.Map2TextureCoord4 = enable->Map2TextureCoord4;
     ctx->Eval.Map2Vertex3 = enable->Map2Vertex3;
     ctx->Eval.Map2Vertex4 = enable->Map2Vertex4;
     ctx->Transform.Normalize = enable->Normalize;
     ctx->Point.SmoothFlag = enable->PointSmooth;
     ctx->Polygon.OffsetPoint = enable->PolygonOffsetPoint;
     ctx->Polygon.OffsetLine = enable->PolygonOffsetLine;
     ctx->Polygon.OffsetFill = enable->PolygonOffsetFill;
            ctx->Polygon.OffsetAny = ctx->Polygon.OffsetPoint ||
                                     ctx->Polygon.OffsetLine ||
                                     ctx->Polygon.OffsetFill;
     ctx->Polygon.SmoothFlag = enable->PolygonSmooth;
     ctx->Polygon.StippleFlag = enable->PolygonStipple;
     ctx->Scissor.Enabled = enable->Scissor;
     ctx->Stencil.Enabled = enable->Stencil;
     ctx->Texture.Enabled = enable->Texture;
     ctx->Texture.TexGenEnabled = enable->TexGen;
            break;
         case 142:
            MEMCPY( &ctx->Eval, attr->data, sizeof(struct gl_eval_attrib) );
            break;
         case 141:
            MEMCPY( &ctx->Fog, attr->data, sizeof(struct gl_fog_attrib) );
            break;
         case 140:
            MEMCPY( &ctx->Hint, attr->data, sizeof(struct gl_hint_attrib) );
            break;
         case 139:
            MEMCPY( &ctx->Light, attr->data, sizeof(struct gl_light_attrib) );
            break;
         case 138:
            MEMCPY( &ctx->Line, attr->data, sizeof(struct gl_line_attrib) );
            break;
         case 137:
            MEMCPY( &ctx->List, attr->data, sizeof(struct gl_list_attrib) );
            break;
         case 136:
            MEMCPY( &ctx->Pixel, attr->data, sizeof(struct gl_pixel_attrib) );
            break;
         case 135:
            MEMCPY( &ctx->Point, attr->data, sizeof(struct gl_point_attrib) );
            break;
         case 134:
            MEMCPY( &ctx->Polygon, attr->data,
      sizeof(struct gl_polygon_attrib) );
            break;
  case 133:
     MEMCPY( ctx->PolygonStipple, attr->data, 32*sizeof(GLuint) );
     break;
         case 132:
            MEMCPY( &ctx->Scissor, attr->data,
      sizeof(struct gl_scissor_attrib) );
            break;
         case 131:
            MEMCPY( &ctx->Stencil, attr->data,
      sizeof(struct gl_stencil_attrib) );
            break;
         case 129:
            MEMCPY( &ctx->Transform, attr->data,
      sizeof(struct gl_transform_attrib) );
            break;
         case 130:
            MEMCPY( &ctx->Texture, attr->data,
      sizeof(struct gl_texture_attrib) );
            break;
         case 128:
            MEMCPY( &ctx->Viewport, attr->data,
      sizeof(struct gl_viewport_attrib) );
            break;
         default:
            gl_problem( ctx, "Bad attrib flag in PopAttrib");
            break;
      }

      next = attr->next;
      free( (void *) attr->data );
      free( (void *) attr );
      attr = next;
   }

   ctx->NewState = NEW_ALL;
}
