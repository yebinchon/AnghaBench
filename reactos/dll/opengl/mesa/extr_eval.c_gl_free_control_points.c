
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gl_2d_map {void* Retain; int * Points; } ;
struct gl_1d_map {void* Retain; int * Points; } ;
struct TYPE_5__ {struct gl_2d_map Map2Texture4; struct gl_2d_map Map2Texture3; struct gl_2d_map Map2Texture2; struct gl_2d_map Map2Texture1; struct gl_2d_map Map2Normal; struct gl_2d_map Map2Color4; struct gl_2d_map Map2Index; struct gl_2d_map Map2Vertex4; struct gl_2d_map Map2Vertex3; struct gl_1d_map Map1Texture4; struct gl_1d_map Map1Texture3; struct gl_1d_map Map1Texture2; struct gl_1d_map Map1Texture1; struct gl_1d_map Map1Normal; struct gl_1d_map Map1Color4; struct gl_1d_map Map1Index; struct gl_1d_map Map1Vertex4; struct gl_1d_map Map1Vertex3; } ;
struct TYPE_6__ {TYPE_1__ EvalMap; } ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;


 void* GL_FALSE ;
 int GL_INVALID_ENUM ;
 int free (int *) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_free_control_points( GLcontext* ctx, GLenum target, GLfloat *data )
{
   struct gl_1d_map *map1 = ((void*)0);
   struct gl_2d_map *map2 = ((void*)0);

   switch (target) {
      case 138:
         map1 = &ctx->EvalMap.Map1Vertex3;
         break;
      case 137:
         map1 = &ctx->EvalMap.Map1Vertex4;
  break;
      case 144:
         map1 = &ctx->EvalMap.Map1Index;
         break;
      case 145:
         map1 = &ctx->EvalMap.Map1Color4;
         break;
      case 143:
         map1 = &ctx->EvalMap.Map1Normal;
  break;
      case 142:
         map1 = &ctx->EvalMap.Map1Texture1;
  break;
      case 141:
         map1 = &ctx->EvalMap.Map1Texture2;
  break;
      case 140:
         map1 = &ctx->EvalMap.Map1Texture3;
  break;
      case 139:
         map1 = &ctx->EvalMap.Map1Texture4;
  break;
      case 129:
         map2 = &ctx->EvalMap.Map2Vertex3;
  break;
      case 128:
         map2 = &ctx->EvalMap.Map2Vertex4;
  break;
      case 135:
         map2 = &ctx->EvalMap.Map2Index;
  break;
      case 136:
         map2 = &ctx->EvalMap.Map2Color4;
         break;
      case 134:
         map2 = &ctx->EvalMap.Map2Normal;
  break;
      case 133:
         map2 = &ctx->EvalMap.Map2Texture1;
  break;
      case 132:
         map2 = &ctx->EvalMap.Map2Texture2;
  break;
      case 131:
         map2 = &ctx->EvalMap.Map2Texture3;
  break;
      case 130:
         map2 = &ctx->EvalMap.Map2Texture4;
  break;
      default:
  gl_error( ctx, GL_INVALID_ENUM, "gl_free_control_points" );
         return;
   }

   if (map1) {
      if (data==map1->Points) {


         map1->Retain = GL_FALSE;
      }
      else {


         free( data );
      }
   }
   if (map2) {
      if (data==map2->Points) {


         map2->Retain = GL_FALSE;
      }
      else {


         free( data );
      }
   }

}
