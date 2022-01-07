
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct gl_2d_map {double u1; double u2; double v1; double v2; int Vorder; int Uorder; int Points; } ;
struct TYPE_11__ {double* Normal; double* TexCoord; int ByteColor; scalar_t__ Index; } ;
struct TYPE_10__ {struct gl_2d_map Map2Texture1; struct gl_2d_map Map2Texture2; struct gl_2d_map Map2Texture3; struct gl_2d_map Map2Texture4; struct gl_2d_map Map2Normal; struct gl_2d_map Map2Color4; struct gl_2d_map Map2Index; struct gl_2d_map Map2Vertex3; struct gl_2d_map Map2Vertex4; } ;
struct TYPE_9__ {scalar_t__ Map2TextureCoord1; scalar_t__ Map2TextureCoord2; scalar_t__ Map2TextureCoord3; scalar_t__ Map2TextureCoord4; scalar_t__ Map2Normal; scalar_t__ Map2Vertex4; scalar_t__ Map2Vertex3; scalar_t__ AutoNormal; scalar_t__ Map2Color4; scalar_t__ Map2Index; } ;
struct TYPE_12__ {TYPE_4__ Current; TYPE_3__ EvalMap; TYPE_2__ Eval; TYPE_1__* Visual; } ;
struct TYPE_8__ {double RedScale; double GreenScale; double BlueScale; double AlphaScale; } ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLubyte ;
typedef scalar_t__ GLint ;
typedef double GLfloat ;
typedef TYPE_5__ GLcontext ;


 int COPY_4V (scalar_t__*,int ) ;
 int CROSS_PROD (double*,double*,double*) ;
 int NORMALIZE_3FV (double*) ;
 int de_casteljau_surf (int ,double*,double*,double*,double,double,int,int ,int ) ;
 int gl_eval_vertex (TYPE_5__*,double*,double*,scalar_t__*,scalar_t__,double*) ;
 int horner_bezier_surf (int ,double*,double,double,int,int ,int ) ;

void gl_EvalCoord2f( GLcontext* ctx, GLfloat u, GLfloat v )
{
   GLfloat vertex[4];
   GLfloat normal[3];
   GLfloat fcolor[4];
   GLubyte icolor[4];
   GLubyte *colorptr;
   GLfloat texcoord[4];
   GLuint index;
   register GLfloat uu, vv;







   if(ctx->Eval.Map2Vertex4) {
      struct gl_2d_map *map = &ctx->EvalMap.Map2Vertex4;
      uu = (u - map->u1) / (map->u2 - map->u1);
      vv = (v - map->v1) / (map->v2 - map->v1);

      if (ctx->Eval.AutoNormal) {
         GLfloat du[4], dv[4];

         de_casteljau_surf(map->Points, vertex, du, dv, uu, vv, 4,
                           map->Uorder, map->Vorder);

         (normal)[0] = (du)[1]*(dv)[2] - (du)[2]*(dv)[1]; (normal)[1] = (du)[2]*(dv)[0] - (du)[0]*(dv)[2]; (normal)[2] = (du)[0]*(dv)[1] - (du)[1]*(dv)[0];
         NORMALIZE_3FV(normal);
      }
      else {
         horner_bezier_surf(map->Points, vertex, uu, vv, 4,
                            map->Uorder, map->Vorder);
      }
   }
   else if (ctx->Eval.Map2Vertex3) {
      struct gl_2d_map *map = &ctx->EvalMap.Map2Vertex3;
      uu = (u - map->u1) / (map->u2 - map->u1);
      vv = (v - map->v1) / (map->v2 - map->v1);
      if (ctx->Eval.AutoNormal) {
         GLfloat du[3], dv[3];
         de_casteljau_surf(map->Points, vertex, du, dv, uu, vv, 3,
                           map->Uorder, map->Vorder);
         (normal)[0] = (du)[1]*(dv)[2] - (du)[2]*(dv)[1]; (normal)[1] = (du)[2]*(dv)[0] - (du)[0]*(dv)[2]; (normal)[2] = (du)[0]*(dv)[1] - (du)[1]*(dv)[0];
         NORMALIZE_3FV(normal);
      }
      else {
         horner_bezier_surf(map->Points, vertex, uu, vv, 3,
                            map->Uorder, map->Vorder);
      }
      vertex[3] = 1.0;
   }



   if (ctx->Eval.Map2Index) {
      GLfloat findex;
      struct gl_2d_map *map = &ctx->EvalMap.Map2Index;
      uu = (u - map->u1) / (map->u2 - map->u1);
      vv = (v - map->v1) / (map->v2 - map->v1);
      horner_bezier_surf(map->Points, &findex, uu, vv, 1,
                         map->Uorder, map->Vorder);
      index = (GLuint) (GLint) findex;
   }
   else {
      index = ctx->Current.Index;
   }


   if (ctx->Eval.Map2Color4) {
      struct gl_2d_map *map = &ctx->EvalMap.Map2Color4;
      uu = (u - map->u1) / (map->u2 - map->u1);
      vv = (v - map->v1) / (map->v2 - map->v1);
      horner_bezier_surf(map->Points, fcolor, uu, vv, 4,
                         map->Uorder, map->Vorder);
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


   if (!ctx->Eval.AutoNormal
       || (!ctx->Eval.Map2Vertex3 && !ctx->Eval.Map2Vertex4)) {
      if (ctx->Eval.Map2Normal) {
         struct gl_2d_map *map = &ctx->EvalMap.Map2Normal;
         uu = (u - map->u1) / (map->u2 - map->u1);
         vv = (v - map->v1) / (map->v2 - map->v1);
         horner_bezier_surf(map->Points, normal, uu, vv, 3,
                            map->Uorder, map->Vorder);
      }
      else {
         normal[0] = ctx->Current.Normal[0];
         normal[1] = ctx->Current.Normal[1];
         normal[2] = ctx->Current.Normal[2];
      }
   }


   if (ctx->Eval.Map2TextureCoord4) {
      struct gl_2d_map *map = &ctx->EvalMap.Map2Texture4;
      uu = (u - map->u1) / (map->u2 - map->u1);
      vv = (v - map->v1) / (map->v2 - map->v1);
      horner_bezier_surf(map->Points, texcoord, uu, vv, 4,
                         map->Uorder, map->Vorder);
   }
   else if (ctx->Eval.Map2TextureCoord3) {
      struct gl_2d_map *map = &ctx->EvalMap.Map2Texture3;
      uu = (u - map->u1) / (map->u2 - map->u1);
      vv = (v - map->v1) / (map->v2 - map->v1);
      horner_bezier_surf(map->Points, texcoord, uu, vv, 3,
                         map->Uorder, map->Vorder);
     texcoord[3] = 1.0;
   }
   else if (ctx->Eval.Map2TextureCoord2) {
      struct gl_2d_map *map = &ctx->EvalMap.Map2Texture2;
      uu = (u - map->u1) / (map->u2 - map->u1);
      vv = (v - map->v1) / (map->v2 - map->v1);
      horner_bezier_surf(map->Points, texcoord, uu, vv, 2,
                         map->Uorder, map->Vorder);
     texcoord[2] = 0.0;
     texcoord[3] = 1.0;
   }
   else if (ctx->Eval.Map2TextureCoord1) {
      struct gl_2d_map *map = &ctx->EvalMap.Map2Texture1;
      uu = (u - map->u1) / (map->u2 - map->u1);
      vv = (v - map->v1) / (map->v2 - map->v1);
      horner_bezier_surf(map->Points, texcoord, uu, vv, 1,
                         map->Uorder, map->Vorder);
     texcoord[1] = 0.0;
     texcoord[2] = 0.0;
     texcoord[3] = 1.0;
   }
   else
   {
     texcoord[0] = ctx->Current.TexCoord[0];
     texcoord[1] = ctx->Current.TexCoord[1];
     texcoord[2] = ctx->Current.TexCoord[2];
     texcoord[3] = ctx->Current.TexCoord[3];
   }

   gl_eval_vertex( ctx, vertex, normal, colorptr, index, texcoord );
}
