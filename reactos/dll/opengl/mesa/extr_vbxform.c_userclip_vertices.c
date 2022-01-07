
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__** ClipEquation; scalar_t__* ClipEnabled; int AnyClip; } ;
struct TYPE_5__ {TYPE_1__ Transform; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef scalar_t__ GLfloat ;
typedef TYPE_2__ GLcontext ;
typedef scalar_t__ GLboolean ;


 int ASSERT (int ) ;
 size_t CLIP_ALL ;
 size_t CLIP_NONE ;
 size_t CLIP_SOME ;
 int CLIP_USER_BIT ;
 scalar_t__ GL_FALSE ;
 scalar_t__ GL_TRUE ;
 scalar_t__ MAGIC_NUMBER ;
 size_t MAX_CLIP_PLANES ;

__attribute__((used)) static GLuint userclip_vertices( GLcontext *ctx, GLuint n,
                                           GLfloat vEye[][4],
                                 GLubyte clipMask[] )
{
   GLboolean anyClipped = GL_FALSE;
   GLuint p;

   ASSERT(ctx->Transform.AnyClip);

   for (p=0;p<MAX_CLIP_PLANES;p++) {
      if (ctx->Transform.ClipEnabled[p]) {
         GLfloat a = ctx->Transform.ClipEquation[p][0];
         GLfloat b = ctx->Transform.ClipEquation[p][1];
         GLfloat c = ctx->Transform.ClipEquation[p][2];
         GLfloat d = ctx->Transform.ClipEquation[p][3];
         GLboolean allClipped = GL_TRUE;
         GLuint i;
         for (i=0;i<n;i++) {
            GLfloat dot = vEye[i][0] * a + vEye[i][1] * b
                        + vEye[i][2] * c + vEye[i][3] * d;
            if (dot < MAGIC_NUMBER) {

               clipMask[i] = CLIP_USER_BIT;
               anyClipped = GL_TRUE;
            }
            else {

               allClipped = GL_FALSE;
            }
         }
         if (allClipped) {
            return CLIP_ALL;
         }
      }
   }

   return anyClipped ? CLIP_SOME : CLIP_NONE;
}
