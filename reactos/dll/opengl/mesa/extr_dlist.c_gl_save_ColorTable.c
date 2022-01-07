
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct gl_image {int RefCount; } ;
struct TYPE_8__ {int (* ColorTable ) (TYPE_3__*,void*,void*,struct gl_image*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int * data; void* e; } ;
typedef TYPE_2__ Node ;
typedef int GLvoid ;
typedef void* GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_COLOR_TABLE ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,struct gl_image*) ;

void gl_save_ColorTable( GLcontext *ctx, GLenum target, GLenum internalFormat,
                         struct gl_image *table )
{
   Node *n = alloc_instruction( ctx, OPCODE_COLOR_TABLE, 3 );
   if (n) {
      n[1].e = target;
      n[2].e = internalFormat;
      n[3].data = (GLvoid *) table;
      if (table) {

         table->RefCount = 1;
      }
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.ColorTable)( ctx, target, internalFormat, table );
   }
}
