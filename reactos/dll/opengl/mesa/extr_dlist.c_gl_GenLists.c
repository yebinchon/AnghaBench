
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* Shared; } ;
struct TYPE_6__ {int DisplayList; } ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLsizei ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 scalar_t__ HashFindFreeKeyBlock (int ,scalar_t__) ;
 int HashInsert (int ,scalar_t__,int ) ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int make_empty_list () ;

GLuint gl_GenLists( GLcontext *ctx, GLsizei range )
{
   GLuint base;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGenLists" );
      return 0;
   }
   if (range<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glGenLists" );
      return 0;
   }
   if (range==0) {
      return 0;
   }

   base = HashFindFreeKeyBlock(ctx->Shared->DisplayList, range);
   if (base) {

      GLuint i;
      for (i=0; i<range; i++) {
         HashInsert(ctx->Shared->DisplayList, base+i, make_empty_list());
      }
   }
   return base;
}
