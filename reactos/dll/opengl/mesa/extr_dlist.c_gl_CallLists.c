
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ListBase; } ;
struct TYPE_6__ {int CompileFlag; TYPE_1__ List; } ;
typedef int GLvoid ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLsizei ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;
typedef int GLboolean ;


 int GL_FALSE ;
 int execute_list (TYPE_2__*,scalar_t__) ;
 scalar_t__ translate_id (scalar_t__,int ,int const*) ;

void gl_CallLists( GLcontext *ctx,
                   GLsizei n, GLenum type, const GLvoid *lists )
{
   GLuint i, list;
   GLboolean save_compile_flag;




   save_compile_flag = ctx->CompileFlag;
   ctx->CompileFlag = GL_FALSE;

   for (i=0;i<n;i++) {
      list = translate_id( i, type, lists );
      execute_list( ctx, ctx->List.ListBase + list );
   }

   ctx->CompileFlag = save_compile_flag;
}
