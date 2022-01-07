
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_25__ {int Order; scalar_t__* Points; void* Retain; scalar_t__ u2; scalar_t__ u1; } ;
struct TYPE_24__ {int Order; scalar_t__* Points; void* Retain; scalar_t__ u2; scalar_t__ u1; } ;
struct TYPE_23__ {int Order; scalar_t__* Points; void* Retain; scalar_t__ u2; scalar_t__ u1; } ;
struct TYPE_22__ {int Order; scalar_t__* Points; void* Retain; scalar_t__ u2; scalar_t__ u1; } ;
struct TYPE_21__ {int Order; scalar_t__* Points; void* Retain; scalar_t__ u2; scalar_t__ u1; } ;
struct TYPE_20__ {int Order; scalar_t__* Points; void* Retain; scalar_t__ u2; scalar_t__ u1; } ;
struct TYPE_19__ {int Order; scalar_t__* Points; void* Retain; scalar_t__ u2; scalar_t__ u1; } ;
struct TYPE_18__ {int Order; scalar_t__* Points; void* Retain; scalar_t__ u2; scalar_t__ u1; } ;
struct TYPE_17__ {int Order; scalar_t__* Points; void* Retain; scalar_t__ u2; scalar_t__ u1; } ;
struct TYPE_15__ {TYPE_6__ Map1Texture4; TYPE_5__ Map1Texture3; TYPE_4__ Map1Texture2; TYPE_3__ Map1Texture1; TYPE_2__ Map1Normal; TYPE_1__ Map1Color4; TYPE_9__ Map1Index; TYPE_8__ Map1Vertex4; TYPE_7__ Map1Vertex3; } ;
struct TYPE_16__ {TYPE_10__ EvalMap; } ;
typedef scalar_t__ GLuint ;
typedef int GLint ;
typedef scalar_t__ GLfloat ;
typedef int GLenum ;
typedef TYPE_11__ GLcontext ;
typedef void* GLboolean ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 int GL_OUT_OF_MEMORY ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_11__*) ;
 int MAX_EVAL_ORDER ;
 void* components (int) ;
 int free (scalar_t__*) ;
 int gl_error (TYPE_11__*,int ,char*) ;

void gl_Map1f( GLcontext* ctx, GLenum target,
               GLfloat u1, GLfloat u2, GLint stride,
               GLint order, const GLfloat *points, GLboolean retain )
{
   GLuint k;

   if (!points) {
      gl_error( ctx, GL_OUT_OF_MEMORY, "glMap1f" );
      return;
   }


   stride = components( target );

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glMap1" );
      return;
   }

   if (u1==u2) {
      gl_error( ctx, GL_INVALID_VALUE, "glMap1(u1,u2)" );
      return;
   }

   if (order<1 || order>MAX_EVAL_ORDER) {
      gl_error( ctx, GL_INVALID_VALUE, "glMap1(order)" );
      return;
   }

   k = components( target );
   if (k==0) {
      gl_error( ctx, GL_INVALID_ENUM, "glMap1(target)" );
   }

   if (stride < k) {
      gl_error( ctx, GL_INVALID_VALUE, "glMap1(stride)" );
      return;
   }

   switch (target) {
      case 129:
         ctx->EvalMap.Map1Vertex3.Order = order;
  ctx->EvalMap.Map1Vertex3.u1 = u1;
  ctx->EvalMap.Map1Vertex3.u2 = u2;
  if (ctx->EvalMap.Map1Vertex3.Points
             && !ctx->EvalMap.Map1Vertex3.Retain) {
     free( ctx->EvalMap.Map1Vertex3.Points );
  }
  ctx->EvalMap.Map1Vertex3.Points = (GLfloat *) points;
         ctx->EvalMap.Map1Vertex3.Retain = retain;
  break;
      case 128:
         ctx->EvalMap.Map1Vertex4.Order = order;
  ctx->EvalMap.Map1Vertex4.u1 = u1;
  ctx->EvalMap.Map1Vertex4.u2 = u2;
  if (ctx->EvalMap.Map1Vertex4.Points
             && !ctx->EvalMap.Map1Vertex4.Retain) {
     free( ctx->EvalMap.Map1Vertex4.Points );
  }
  ctx->EvalMap.Map1Vertex4.Points = (GLfloat *) points;
  ctx->EvalMap.Map1Vertex4.Retain = retain;
  break;
      case 135:
         ctx->EvalMap.Map1Index.Order = order;
  ctx->EvalMap.Map1Index.u1 = u1;
  ctx->EvalMap.Map1Index.u2 = u2;
  if (ctx->EvalMap.Map1Index.Points
             && !ctx->EvalMap.Map1Index.Retain) {
     free( ctx->EvalMap.Map1Index.Points );
  }
  ctx->EvalMap.Map1Index.Points = (GLfloat *) points;
  ctx->EvalMap.Map1Index.Retain = retain;
  break;
      case 136:
         ctx->EvalMap.Map1Color4.Order = order;
  ctx->EvalMap.Map1Color4.u1 = u1;
  ctx->EvalMap.Map1Color4.u2 = u2;
  if (ctx->EvalMap.Map1Color4.Points
             && !ctx->EvalMap.Map1Color4.Retain) {
     free( ctx->EvalMap.Map1Color4.Points );
  }
  ctx->EvalMap.Map1Color4.Points = (GLfloat *) points;
  ctx->EvalMap.Map1Color4.Retain = retain;
  break;
      case 134:
         ctx->EvalMap.Map1Normal.Order = order;
  ctx->EvalMap.Map1Normal.u1 = u1;
  ctx->EvalMap.Map1Normal.u2 = u2;
  if (ctx->EvalMap.Map1Normal.Points
             && !ctx->EvalMap.Map1Normal.Retain) {
     free( ctx->EvalMap.Map1Normal.Points );
  }
  ctx->EvalMap.Map1Normal.Points = (GLfloat *) points;
  ctx->EvalMap.Map1Normal.Retain = retain;
  break;
      case 133:
         ctx->EvalMap.Map1Texture1.Order = order;
  ctx->EvalMap.Map1Texture1.u1 = u1;
  ctx->EvalMap.Map1Texture1.u2 = u2;
  if (ctx->EvalMap.Map1Texture1.Points
             && !ctx->EvalMap.Map1Texture1.Retain) {
     free( ctx->EvalMap.Map1Texture1.Points );
  }
  ctx->EvalMap.Map1Texture1.Points = (GLfloat *) points;
  ctx->EvalMap.Map1Texture1.Retain = retain;
  break;
      case 132:
         ctx->EvalMap.Map1Texture2.Order = order;
  ctx->EvalMap.Map1Texture2.u1 = u1;
  ctx->EvalMap.Map1Texture2.u2 = u2;
  if (ctx->EvalMap.Map1Texture2.Points
             && !ctx->EvalMap.Map1Texture2.Retain) {
     free( ctx->EvalMap.Map1Texture2.Points );
  }
  ctx->EvalMap.Map1Texture2.Points = (GLfloat *) points;
  ctx->EvalMap.Map1Texture2.Retain = retain;
  break;
      case 131:
         ctx->EvalMap.Map1Texture3.Order = order;
  ctx->EvalMap.Map1Texture3.u1 = u1;
  ctx->EvalMap.Map1Texture3.u2 = u2;
  if (ctx->EvalMap.Map1Texture3.Points
             && !ctx->EvalMap.Map1Texture3.Retain) {
     free( ctx->EvalMap.Map1Texture3.Points );
  }
  ctx->EvalMap.Map1Texture3.Points = (GLfloat *) points;
  ctx->EvalMap.Map1Texture3.Retain = retain;
  break;
      case 130:
         ctx->EvalMap.Map1Texture4.Order = order;
  ctx->EvalMap.Map1Texture4.u1 = u1;
  ctx->EvalMap.Map1Texture4.u2 = u2;
  if (ctx->EvalMap.Map1Texture4.Points
             && !ctx->EvalMap.Map1Texture4.Retain) {
     free( ctx->EvalMap.Map1Texture4.Points );
  }
  ctx->EvalMap.Map1Texture4.Points = (GLfloat *) points;
  ctx->EvalMap.Map1Texture4.Retain = retain;
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glMap1(target)" );
   }
}
