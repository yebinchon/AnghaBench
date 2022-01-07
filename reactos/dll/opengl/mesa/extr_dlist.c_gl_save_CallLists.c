
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* CallLists ) (TYPE_3__*,scalar_t__,int ,int const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {scalar_t__ ui; } ;
typedef TYPE_2__ Node ;
typedef int GLvoid ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLsizei ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_CALL_LIST_OFFSET ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,scalar_t__,int ,int const*) ;
 scalar_t__ translate_id (scalar_t__,int ,int const*) ;

void gl_save_CallLists( GLcontext *ctx,
                        GLsizei n, GLenum type, const GLvoid *lists )
{
   GLuint i;

   for (i=0;i<n;i++) {
      GLuint list = translate_id( i, type, lists );
      Node *n = alloc_instruction( ctx, OPCODE_CALL_LIST_OFFSET, 1 );
      if (n) {
         n[1].ui = list;
      }
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.CallLists)( ctx, n, type, lists );
   }
}
