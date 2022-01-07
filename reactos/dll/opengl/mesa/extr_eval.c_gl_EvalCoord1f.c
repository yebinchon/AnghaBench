
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct gl_1d_map {double u1; double u2; int Order; int Points; } ;
struct TYPE_8__ {double* Normal; double* TexCoord; int ByteColor; scalar_t__ Index; } ;
struct TYPE_10__ {struct gl_1d_map Map1Texture1; struct gl_1d_map Map1Texture2; struct gl_1d_map Map1Texture3; struct gl_1d_map Map1Texture4; struct gl_1d_map Map1Normal; struct gl_1d_map Map1Color4; struct gl_1d_map Map1Index; struct gl_1d_map Map1Vertex3; struct gl_1d_map Map1Vertex4; } ;
struct TYPE_9__ {scalar_t__ Map1TextureCoord1; scalar_t__ Map1TextureCoord2; scalar_t__ Map1TextureCoord3; scalar_t__ Map1TextureCoord4; scalar_t__ Map1Normal; scalar_t__ Map1Color4; scalar_t__ Map1Index; scalar_t__ Map1Vertex3; scalar_t__ Map1Vertex4; } ;
struct TYPE_12__ {TYPE_1__ Current; TYPE_3__ EvalMap; TYPE_2__ Eval; TYPE_4__* Visual; } ;
struct TYPE_11__ {double RedScale; double GreenScale; double BlueScale; double AlphaScale; } ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLubyte ;
typedef scalar_t__ GLint ;
typedef double GLfloat ;
typedef TYPE_5__ GLcontext ;


 int COPY_4V (scalar_t__*,int ) ;
 int gl_eval_vertex (TYPE_5__*,double*,double*,scalar_t__*,scalar_t__,double*) ;
 int horner_bezier_curve (int ,double*,double,int,int ) ;

void gl_EvalCoord1f(GLcontext* ctx, GLfloat u)
{
  GLfloat vertex[4];
  GLfloat normal[3];
  GLfloat fcolor[4];
  GLubyte icolor[4];
  GLubyte *colorptr;
  GLfloat texcoord[4];
  GLuint index;
  register GLfloat uu;


  if (ctx->Eval.Map1Vertex4)
  {
     struct gl_1d_map *map = &ctx->EvalMap.Map1Vertex4;
     uu = (u - map->u1) / (map->u2 - map->u1);
     horner_bezier_curve(map->Points, vertex, uu, 4, map->Order);
  }
  else if (ctx->Eval.Map1Vertex3)
  {
     struct gl_1d_map *map = &ctx->EvalMap.Map1Vertex3;
     uu = (u - map->u1) / (map->u2 - map->u1);
     horner_bezier_curve(map->Points, vertex, uu, 3, map->Order);
     vertex[3] = 1.0;
  }


  if (ctx->Eval.Map1Index)
  {
     struct gl_1d_map *map = &ctx->EvalMap.Map1Index;
     GLfloat findex;
     uu = (u - map->u1) / (map->u2 - map->u1);
     horner_bezier_curve(map->Points, &findex, uu, 1, map->Order);
     index = (GLuint) (GLint) findex;
  }
  else {
     index = ctx->Current.Index;
  }


  if (ctx->Eval.Map1Color4) {
     struct gl_1d_map *map = &ctx->EvalMap.Map1Color4;
     uu = (u - map->u1) / (map->u2 - map->u1);
     horner_bezier_curve(map->Points, fcolor, uu, 4, map->Order);
     icolor[0] = (GLint) (fcolor[0] * ctx->Visual->RedScale);
     icolor[1] = (GLint) (fcolor[1] * ctx->Visual->GreenScale);
     icolor[2] = (GLint) (fcolor[2] * ctx->Visual->BlueScale);
     icolor[3] = (GLint) (fcolor[3] * ctx->Visual->AlphaScale);
     colorptr = icolor;
  }
  else {
     GLubyte col[4];
     COPY_4V(col, ctx->Current.ByteColor );
     colorptr = col;
  }


  if (ctx->Eval.Map1Normal) {
     struct gl_1d_map *map = &ctx->EvalMap.Map1Normal;
     uu = (u - map->u1) / (map->u2 - map->u1);
     horner_bezier_curve(map->Points, normal, uu, 3, map->Order);
  }
  else {
    normal[0] = ctx->Current.Normal[0];
    normal[1] = ctx->Current.Normal[1];
    normal[2] = ctx->Current.Normal[2];
  }


  if (ctx->Eval.Map1TextureCoord4) {
     struct gl_1d_map *map = &ctx->EvalMap.Map1Texture4;
     uu = (u - map->u1) / (map->u2 - map->u1);
     horner_bezier_curve(map->Points, texcoord, uu, 4, map->Order);
  }
  else if (ctx->Eval.Map1TextureCoord3) {
     struct gl_1d_map *map = &ctx->EvalMap.Map1Texture3;
     uu = (u - map->u1) / (map->u2 - map->u1);
     horner_bezier_curve(map->Points, texcoord, uu, 3, map->Order);
     texcoord[3] = 1.0;
  }
  else if (ctx->Eval.Map1TextureCoord2) {
     struct gl_1d_map *map = &ctx->EvalMap.Map1Texture2;
     uu = (u - map->u1) / (map->u2 - map->u1);
     horner_bezier_curve(map->Points, texcoord, uu, 2, map->Order);
     texcoord[2] = 0.0;
     texcoord[3] = 1.0;
  }
  else if (ctx->Eval.Map1TextureCoord1) {
     struct gl_1d_map *map = &ctx->EvalMap.Map1Texture1;
     uu = (u - map->u1) / (map->u2 - map->u1);
     horner_bezier_curve(map->Points, texcoord, uu, 1, map->Order);
     texcoord[1] = 0.0;
     texcoord[2] = 0.0;
     texcoord[3] = 1.0;
  }
  else {
     texcoord[0] = ctx->Current.TexCoord[0];
     texcoord[1] = ctx->Current.TexCoord[1];
     texcoord[2] = ctx->Current.TexCoord[2];
     texcoord[3] = ctx->Current.TexCoord[3];
  }

  gl_eval_vertex( ctx, vertex, normal, colorptr, index, texcoord );
}
