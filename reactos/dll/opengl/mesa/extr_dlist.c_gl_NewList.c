
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Save; int API; void* ExecuteFlag; void* CompileFlag; scalar_t__ CurrentPos; int * CurrentBlock; int * CurrentListPtr; scalar_t__ CurrentListNum; } ;
typedef int Node ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLenum ;
typedef TYPE_1__ GLcontext ;


 int BLOCK_SIZE ;
 scalar_t__ GL_COMPILE ;
 scalar_t__ GL_COMPILE_AND_EXECUTE ;
 void* GL_FALSE ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 void* GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_1__*) ;
 int gl_error (TYPE_1__*,int ,char*) ;
 scalar_t__ malloc (int) ;

void gl_NewList( GLcontext *ctx, GLuint list, GLenum mode )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glNewList" );
      return;
   }
   if (list==0) {
      gl_error( ctx, GL_INVALID_VALUE, "glNewList" );
      return;
   }
   if (mode!=GL_COMPILE && mode!=GL_COMPILE_AND_EXECUTE) {
      gl_error( ctx, GL_INVALID_ENUM, "glNewList" );
      return;
   }
   if (ctx->CurrentListPtr) {

      gl_error( ctx, GL_INVALID_OPERATION, "glNewList" );
      return;
   }


   ctx->CurrentListNum = list;
   ctx->CurrentListPtr = ctx->CurrentBlock = (Node *) malloc( sizeof(Node) * BLOCK_SIZE );
   ctx->CurrentPos = 0;

   ctx->CompileFlag = GL_TRUE;
   if (mode==GL_COMPILE) {
      ctx->ExecuteFlag = GL_FALSE;
   }
   else {

      ctx->ExecuteFlag = GL_TRUE;
   }

   ctx->API = ctx->Save;
}
