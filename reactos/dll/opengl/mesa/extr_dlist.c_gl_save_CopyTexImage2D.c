
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* CopyTexImage2D ) (TYPE_3__*,void*,void*,void*,void*,void*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* i; void* e; } ;
typedef TYPE_2__ Node ;
typedef void* GLsizei ;
typedef void* GLint ;
typedef void* GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_COPY_TEX_IMAGE2D ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,void*,void*,void*,void*,void*,void*) ;

void gl_save_CopyTexImage2D( GLcontext *ctx,
                             GLenum target, GLint level,
                             GLenum internalformat,
                             GLint x, GLint y, GLsizei width,
                             GLsizei height, GLint border )
{
   Node *n = alloc_instruction( ctx, OPCODE_COPY_TEX_IMAGE2D, 8 );
   if (n) {
      n[1].e = target;
      n[2].i = level;
      n[3].e = internalformat;
      n[4].i = x;
      n[5].i = y;
      n[6].i = width;
      n[7].i = height;
      n[8].i = border;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.CopyTexImage2D)( ctx, target, level, internalformat,
                            x, y, width, height, border );
   }
}
