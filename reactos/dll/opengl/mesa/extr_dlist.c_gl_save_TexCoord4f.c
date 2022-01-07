
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* TexCoord4f ) (TYPE_3__*,void*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* f; } ;
typedef TYPE_2__ Node ;
typedef void* GLfloat ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_TEXCOORD4 ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,void*,void*) ;

void gl_save_TexCoord4f( GLcontext *ctx, GLfloat s, GLfloat t,
                                         GLfloat r, GLfloat q )
{
   Node *n = alloc_instruction( ctx, OPCODE_TEXCOORD4, 4 );
   if (n) {
      n[1].f = s;
      n[2].f = t;
      n[3].f = r;
      n[4].f = q;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.TexCoord4f)( ctx, s, t, r, q );
   }
}
