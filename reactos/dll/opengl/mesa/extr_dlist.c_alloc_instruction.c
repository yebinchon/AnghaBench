
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ CurrentPos; TYPE_1__* CurrentBlock; } ;
struct TYPE_6__ {size_t opcode; struct TYPE_6__* next; } ;
typedef size_t OpCode ;
typedef TYPE_1__ Node ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLint ;
typedef TYPE_2__ GLcontext ;


 scalar_t__ BLOCK_SIZE ;
 int GL_OUT_OF_MEMORY ;
 scalar_t__* InstSize ;
 size_t OPCODE_CONTINUE ;
 int assert (int) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static Node *alloc_instruction( GLcontext *ctx, OpCode opcode, GLint argcount )
{
   Node *n, *newblock;
   GLuint count = InstSize[opcode];

   assert( count == argcount+1 );

   if (ctx->CurrentPos + count + 2 > BLOCK_SIZE) {

      n = ctx->CurrentBlock + ctx->CurrentPos;
      n[0].opcode = OPCODE_CONTINUE;
      newblock = (Node *) malloc( sizeof(Node) * BLOCK_SIZE );
      if (!newblock) {
         gl_error( ctx, GL_OUT_OF_MEMORY, "Building display list" );
         return ((void*)0);
      }
      n[1].next = (Node *) newblock;
      ctx->CurrentBlock = newblock;
      ctx->CurrentPos = 0;
   }

   n = ctx->CurrentBlock + ctx->CurrentPos;
   ctx->CurrentPos += count;

   n[0].opcode = opcode;

   return n;
}
