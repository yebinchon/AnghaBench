
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* PrioritizeTextures ) (TYPE_3__*,size_t,int const*,int const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int f; int ui; } ;
typedef TYPE_2__ Node ;
typedef int GLuint ;
typedef size_t GLsizei ;
typedef size_t GLint ;
typedef TYPE_3__ GLcontext ;
typedef int GLclampf ;


 int OPCODE_PRIORITIZE_TEXTURE ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,size_t,int const*,int const*) ;

void gl_save_PrioritizeTextures( GLcontext *ctx,
                                 GLsizei num, const GLuint *textures,
                                 const GLclampf *priorities )
{
   GLint i;

   for (i=0;i<num;i++) {
      Node *n = alloc_instruction( ctx, OPCODE_PRIORITIZE_TEXTURE, 2 );
      if (n) {
         n[1].ui = textures[i];
         n[2].f = priorities[i];
      }
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.PrioritizeTextures)( ctx, num, textures, priorities );
   }
}
