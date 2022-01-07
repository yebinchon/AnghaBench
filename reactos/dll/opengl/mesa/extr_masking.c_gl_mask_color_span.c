
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ColorMask; } ;
struct TYPE_6__ {TYPE_1__ Color; } ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef TYPE_2__ GLcontext ;


 int MAX_WIDTH ;
 int MEMCPY (int *,int *,int ) ;
 int gl_read_color_span (TYPE_2__*,int ,int ,int ,int *,int *,int *,int *) ;

void gl_mask_color_span( GLcontext *ctx,
                         GLuint n, GLint x, GLint y,
                         GLubyte red[], GLubyte green[],
                         GLubyte blue[], GLubyte alpha[] )
{
   GLubyte r[MAX_WIDTH], g[MAX_WIDTH], b[MAX_WIDTH], a[MAX_WIDTH];

   gl_read_color_span( ctx, n, x, y, r, g, b, a );

   if ((ctx->Color.ColorMask & 8) == 0) {

      MEMCPY( red, r, n );
   }
   if ((ctx->Color.ColorMask & 4) == 0) {

      MEMCPY( green, g, n );
   }
   if ((ctx->Color.ColorMask & 2) == 0) {

      MEMCPY( blue, b, n );
   }
   if ((ctx->Color.ColorMask & 1) == 0) {

      MEMCPY( alpha, a, n );
   }
}
