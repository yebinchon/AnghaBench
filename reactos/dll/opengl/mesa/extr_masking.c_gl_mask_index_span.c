
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t IndexMask; } ;
struct TYPE_6__ {TYPE_1__ Color; } ;
typedef size_t GLuint ;
typedef int GLint ;
typedef TYPE_2__ GLcontext ;


 int MAX_WIDTH ;
 int gl_read_index_span (TYPE_2__*,size_t,int ,int ,size_t*) ;

void gl_mask_index_span( GLcontext *ctx,
                         GLuint n, GLint x, GLint y, GLuint index[] )
{
   GLuint i;
   GLuint fbindexes[MAX_WIDTH];
   GLuint msrc, mdest;

   gl_read_index_span( ctx, n, x, y, fbindexes );

   msrc = ctx->Color.IndexMask;
   mdest = ~msrc;

   for (i=0;i<n;i++) {
      index[i] = (index[i] & msrc) | (fbindexes[i] & mdest);
   }
}
