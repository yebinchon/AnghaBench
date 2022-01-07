
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* CopyTexSubImage1D ) (TYPE_3__*,int ,void*,void*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* i; int e; } ;
typedef TYPE_2__ Node ;
typedef void* GLsizei ;
typedef void* GLint ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_COPY_TEX_SUB_IMAGE1D ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,void*,void*,void*,void*,void*) ;

void gl_save_CopyTexSubImage1D( GLcontext *ctx,
                                GLenum target, GLint level,
                                GLint xoffset, GLint x, GLint y,
                                GLsizei width )
{
   Node *n = alloc_instruction( ctx, OPCODE_COPY_TEX_SUB_IMAGE1D, 6 );
   if (n) {
      n[1].e = target;
      n[2].i = level;
      n[3].i = xoffset;
      n[4].i = x;
      n[5].i = y;
      n[6].i = width;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.CopyTexSubImage1D)( ctx, target, level, xoffset, x, y, width );
   }
}
