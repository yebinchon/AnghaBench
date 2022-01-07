
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float Sx; float Tx; float Sy; float Ty; float Sz; float Tz; } ;
struct TYPE_7__ {scalar_t__ ProjectionMatrixType; scalar_t__ ModelViewMatrixType; TYPE_2__* VB; TYPE_1__ Viewport; } ;
struct TYPE_6__ {int VertexSizeMask; } ;
typedef size_t GLuint ;
typedef scalar_t__ GLubyte ;
typedef float GLfloat ;
typedef TYPE_3__ GLcontext ;


 scalar_t__ MATRIX_GENERAL ;
 scalar_t__ MATRIX_IDENTITY ;
 scalar_t__ MATRIX_ORTHO ;
 int TRACE (char*,float,float,float,float,float,float,float) ;
 int VERTEX4_BIT ;

__attribute__((used)) static void viewport_map_vertices( GLcontext *ctx,
                                   GLuint n, GLfloat vClip[][4],
                                   const GLubyte clipMask[], GLfloat vWin[][3])
{
   GLfloat sx = ctx->Viewport.Sx;
   GLfloat tx = ctx->Viewport.Tx;
   GLfloat sy = ctx->Viewport.Sy;
   GLfloat ty = ctx->Viewport.Ty;
   GLfloat sz = ctx->Viewport.Sz;
   GLfloat tz = ctx->Viewport.Tz;

   if ((ctx->ProjectionMatrixType==MATRIX_ORTHO ||
        ctx->ProjectionMatrixType==MATRIX_IDENTITY)
       && ctx->ModelViewMatrixType!=MATRIX_GENERAL
       && (ctx->VB->VertexSizeMask & VERTEX4_BIT)==0) {

      if (clipMask) {

         GLuint i;
         for (i=0;i<n;i++) {
            if (clipMask[i]==0) {
               vWin[i][0] = vClip[i][0] * sx + tx;
               vWin[i][1] = vClip[i][1] * sy + ty;
               vWin[i][2] = vClip[i][2] * sz + tz;
            }
         }
      }
      else {

         GLuint i;
         for (i=0;i<n;i++) {
            vWin[i][0] = vClip[i][0] * sx + tx;
            vWin[i][1] = vClip[i][1] * sy + ty;
            vWin[i][2] = vClip[i][2] * sz + tz;
         }
      }
   }
   else {

      if (clipMask) {

         GLuint i;
         for (i=0;i<n;i++) {
            if (clipMask[i] == 0) {
               if (vClip[i][3] != 0.0F) {
                  GLfloat wInv = 1.0F / vClip[i][3];
                  vWin[i][0] = vClip[i][0] * wInv * sx + tx;
                  vWin[i][1] = vClip[i][1] * wInv * sy + ty;
                  vWin[i][2] = vClip[i][2] * wInv * sz + tz;
               }
               else {

                  vWin[i][0] = 0.0F;
                  vWin[i][1] = 0.0F;
                  vWin[i][2] = 0.0F;
               }
            }
         }
      }
      else {

         GLuint i;
         for (i=0;i<n;i++) {
            if (vClip[i][3] != 0.0F) {
               GLfloat wInv = 1.0F / vClip[i][3];
               vWin[i][0] = vClip[i][0] * wInv * sx + tx;
               vWin[i][1] = vClip[i][1] * wInv * sy + ty;
               vWin[i][2] = vClip[i][2] * wInv * sz + tz;
            }
            else {

               vWin[i][0] = 0.0F;
               vWin[i][1] = 0.0F;
               vWin[i][2] = 0.0F;
            }
         }
      }
   }
   if (1)
   {
       GLuint i;
       for (i = 0; i < n; i++)
       {
           TRACE("(%3.1f, %3.1f, %3.1f, %3.1f) --> (%3.1f, %3.1f, %3.1f)\n",
                   vClip[i][0], vClip[i][1], vClip[i][2], vClip[i][3],
                   vWin[i][0], vWin[i][1], vWin[i][2]);
       }
   }
}
