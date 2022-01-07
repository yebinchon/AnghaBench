
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_32__ {int SmoothFlag; } ;
struct TYPE_31__ {int Normalize; int * ClipEnabled; } ;
struct TYPE_30__ {int Map2Vertex4; int Map2Vertex3; int Map2TextureCoord4; int Map2TextureCoord3; int Map2TextureCoord2; int Map2TextureCoord1; int Map2Normal; int Map2Index; int Map2Color4; int Map1Vertex4; int Map1Vertex3; int Map1TextureCoord4; int Map1TextureCoord3; int Map1TextureCoord2; int Map1TextureCoord1; int Map1Normal; int Map1Index; int Map1Color4; int AutoNormal; } ;
struct TYPE_29__ {int ColorLogicOpEnabled; int IndexLogicOpEnabled; int DitherFlag; int BlendEnabled; int AlphaEnabled; } ;
struct TYPE_28__ {int StippleFlag; int SmoothFlag; } ;
struct TYPE_27__ {TYPE_3__* Light; int Enabled; int ColorMaterialEnabled; } ;
struct TYPE_26__ {int Enabled; } ;
struct TYPE_25__ {int Enabled; } ;
struct TYPE_24__ {int Test; } ;
struct TYPE_22__ {int EdgeFlagEnabled; int TexCoordEnabled; int IndexEnabled; int ColorEnabled; int NormalEnabled; int VertexEnabled; } ;
struct TYPE_21__ {int Enabled; int TexGenEnabled; } ;
struct TYPE_20__ {int Enabled; } ;
struct TYPE_19__ {int Enabled; } ;
struct TYPE_18__ {int OffsetFill; int OffsetLine; int OffsetPoint; int StippleFlag; int SmoothFlag; int CullFlag; } ;
struct TYPE_23__ {TYPE_14__ Array; TYPE_13__ Texture; TYPE_12__ Stencil; TYPE_11__ Scissor; TYPE_10__ Polygon; TYPE_9__ Point; TYPE_8__ Transform; TYPE_7__ Eval; TYPE_6__ Color; TYPE_5__ Line; TYPE_4__ Light; TYPE_2__ Fog; TYPE_1__ Depth; } ;
typedef int GLenum ;
typedef TYPE_15__ GLcontext ;
typedef int GLboolean ;
 int GL_FALSE ;



 int GL_INVALID_ENUM ;
 int GL_TRUE ;

 int Q_BIT ;
 int R_BIT ;
 int S_BIT ;
 int TEXTURE_1D ;
 int TEXTURE_2D ;
 int T_BIT ;
 int gl_error (TYPE_15__*,int ,char*) ;

GLboolean gl_IsEnabled( GLcontext* ctx, GLenum cap )
{
   switch (cap) {
      case 193:
         return ctx->Color.AlphaEnabled;
      case 192:
  return ctx->Eval.AutoNormal;
      case 191:
         return ctx->Color.BlendEnabled;
      case 190:
      case 189:
      case 188:
      case 187:
      case 186:
      case 185:
  return ctx->Transform.ClipEnabled[cap-190];
      case 182:
  return ctx->Light.ColorMaterialEnabled;
      case 181:
         return ctx->Polygon.CullFlag;
      case 180:
         return ctx->Depth.Test;
      case 179:
  return ctx->Color.DitherFlag;
      case 177:
  return ctx->Fog.Enabled;
      case 166:
         return ctx->Light.Enabled;
      case 174:
      case 173:
      case 172:
      case 171:
      case 170:
      case 169:
      case 168:
      case 167:
         return ctx->Light.Light[cap-174].Enabled;
      case 165:
  return ctx->Line.SmoothFlag;
      case 164:
  return ctx->Line.StippleFlag;
      case 175:
  return ctx->Color.IndexLogicOpEnabled;
      case 183:
  return ctx->Color.ColorLogicOpEnabled;
      case 163:
  return ctx->Eval.Map1Color4;
      case 162:
  return ctx->Eval.Map1Index;
      case 161:
  return ctx->Eval.Map1Normal;
      case 160:
  return ctx->Eval.Map1TextureCoord1;
      case 159:
  return ctx->Eval.Map1TextureCoord2;
      case 158:
  return ctx->Eval.Map1TextureCoord3;
      case 157:
  return ctx->Eval.Map1TextureCoord4;
      case 156:
  return ctx->Eval.Map1Vertex3;
      case 155:
  return ctx->Eval.Map1Vertex4;
      case 154:
  return ctx->Eval.Map2Color4;
      case 153:
  return ctx->Eval.Map2Index;
      case 152:
  return ctx->Eval.Map2Normal;
      case 151:
  return ctx->Eval.Map2TextureCoord1;
      case 150:
  return ctx->Eval.Map2TextureCoord2;
      case 149:
  return ctx->Eval.Map2TextureCoord3;
      case 148:
  return ctx->Eval.Map2TextureCoord4;
      case 147:
  return ctx->Eval.Map2Vertex3;
      case 146:
  return ctx->Eval.Map2Vertex4;
      case 145:
  return ctx->Transform.Normalize;
      case 143:
  return ctx->Point.SmoothFlag;
      case 139:
  return ctx->Polygon.SmoothFlag;
      case 138:
  return ctx->Polygon.StippleFlag;
      case 140:
  return ctx->Polygon.OffsetPoint;
      case 141:
  return ctx->Polygon.OffsetLine;
      case 142:

  return ctx->Polygon.OffsetFill;
      case 137:
  return ctx->Scissor.Enabled;
      case 136:
  return ctx->Stencil.Enabled;
      case 135:
  return (ctx->Texture.Enabled & TEXTURE_1D) ? GL_TRUE : GL_FALSE;
      case 134:
  return (ctx->Texture.Enabled & TEXTURE_2D) ? GL_TRUE : GL_FALSE;
      case 132:
  return (ctx->Texture.TexGenEnabled & Q_BIT) ? GL_TRUE : GL_FALSE;
      case 131:
  return (ctx->Texture.TexGenEnabled & R_BIT) ? GL_TRUE : GL_FALSE;
      case 130:
  return (ctx->Texture.TexGenEnabled & S_BIT) ? GL_TRUE : GL_FALSE;
      case 129:
  return (ctx->Texture.TexGenEnabled & T_BIT) ? GL_TRUE : GL_FALSE;




      case 128:
         return ctx->Array.VertexEnabled;
      case 144:
         return ctx->Array.NormalEnabled;
      case 184:
         return ctx->Array.ColorEnabled;
      case 176:
         return ctx->Array.IndexEnabled;
      case 133:
         return ctx->Array.TexCoordEnabled;
      case 178:
         return ctx->Array.EdgeFlagEnabled;
      default:
  gl_error( ctx, GL_INVALID_ENUM, "glIsEnabled" );
  return GL_FALSE;
   }
}
