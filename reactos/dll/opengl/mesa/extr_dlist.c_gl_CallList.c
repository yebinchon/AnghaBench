
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CompileFlag; } ;
typedef int GLuint ;
typedef TYPE_1__ GLcontext ;
typedef int GLboolean ;


 int GL_FALSE ;
 int execute_list (TYPE_1__*,int ) ;

void gl_CallList( GLcontext *ctx, GLuint list )
{


   GLboolean save_compile_flag;
   save_compile_flag = ctx->CompileFlag;
   ctx->CompileFlag = GL_FALSE;
   execute_list( ctx, list );
   ctx->CompileFlag = save_compile_flag;
}
