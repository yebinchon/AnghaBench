
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Exec; int API; int CompileFlag; int ExecuteFlag; int * CurrentListPtr; scalar_t__ CurrentListNum; TYPE_1__* Shared; } ;
struct TYPE_7__ {int DisplayList; } ;
typedef int Node ;
typedef TYPE_2__ GLcontext ;


 int GL_FALSE ;
 int GL_INVALID_OPERATION ;
 int GL_TRUE ;
 int HashInsert (int ,scalar_t__,int *) ;
 int OPCODE_END_OF_LIST ;
 int * alloc_instruction (TYPE_2__*,int ,int ) ;
 int gl_destroy_list (TYPE_2__*,scalar_t__) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_EndList( GLcontext *ctx )
{
   Node *n;


   if (!ctx->CurrentListPtr) {
      gl_error( ctx, GL_INVALID_OPERATION, "glEndList" );
      return;
   }

   n = alloc_instruction( ctx, OPCODE_END_OF_LIST, 0 );
   (void)n;


   gl_destroy_list(ctx, ctx->CurrentListNum);

   HashInsert(ctx->Shared->DisplayList, ctx->CurrentListNum, ctx->CurrentListPtr);

   ctx->CurrentListNum = 0;
   ctx->CurrentListPtr = ((void*)0);
   ctx->ExecuteFlag = GL_TRUE;
   ctx->CompileFlag = GL_FALSE;

   ctx->API = ctx->Exec;
}
