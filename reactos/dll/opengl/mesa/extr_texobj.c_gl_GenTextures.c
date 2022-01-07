
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gl_texture_object {int dummy; } ;
struct TYPE_7__ {int TexObjects; } ;
struct TYPE_6__ {TYPE_3__* Shared; } ;
typedef size_t GLuint ;
typedef size_t GLsizei ;
typedef TYPE_1__ GLcontext ;


 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 size_t HashFindFreeKeyBlock (int ,size_t) ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_1__*) ;
 struct gl_texture_object* gl_alloc_texture_object (TYPE_3__*,size_t,size_t) ;
 int gl_error (TYPE_1__*,int ,char*) ;

void gl_GenTextures( GLcontext *ctx, GLsizei n, GLuint *texName )
{
   GLuint first, i;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGenTextures" );
      return;
   }
   if (n<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glGenTextures" );
      return;
   }

   first = HashFindFreeKeyBlock(ctx->Shared->TexObjects, n);


   for (i=0;i<n;i++) {
      texName[i] = first + i;
   }


   for (i=0;i<n;i++) {
      GLuint name = first + i;
      GLuint dims = 0;
      struct gl_texture_object *newTexObj = gl_alloc_texture_object(ctx->Shared, name, dims);
      (void)newTexObj;
   }
}
