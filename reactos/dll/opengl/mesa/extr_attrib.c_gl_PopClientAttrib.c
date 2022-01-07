
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct gl_pixelstore_attrib {int dummy; } ;
struct gl_attrib_node {int kind; scalar_t__ data; struct gl_attrib_node* next; } ;
struct gl_array_attrib {int dummy; } ;
struct TYPE_6__ {size_t ClientAttribStackDepth; int NewState; int Array; int Unpack; int Pack; struct gl_attrib_node** ClientAttribStack; } ;
typedef TYPE_1__ GLcontext ;





 int GL_INVALID_OPERATION ;
 int GL_STACK_UNDERFLOW ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_1__*) ;
 int MEMCPY (int *,scalar_t__,int) ;
 int NEW_ALL ;
 int free (void*) ;
 int gl_error (TYPE_1__*,int ,char*) ;
 int gl_problem (TYPE_1__*,char*) ;

void gl_PopClientAttrib( GLcontext *ctx )
{
   struct gl_attrib_node *attr, *next;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glPopClientAttrib" );
      return;
   }

   if (ctx->ClientAttribStackDepth==0) {
      gl_error( ctx, GL_STACK_UNDERFLOW, "glPopClientAttrib" );
      return;
   }

   ctx->ClientAttribStackDepth--;
   attr = ctx->ClientAttribStack[ctx->ClientAttribStackDepth];

   while (attr) {
      switch (attr->kind) {
         case 130:
            MEMCPY( &ctx->Pack, attr->data,
                    sizeof(struct gl_pixelstore_attrib) );
            break;
         case 129:
            MEMCPY( &ctx->Unpack, attr->data,
                    sizeof(struct gl_pixelstore_attrib) );
            break;
         case 128:
            MEMCPY( &ctx->Array, attr->data,
      sizeof(struct gl_array_attrib) );
            break;
         default:
            gl_problem( ctx, "Bad attrib flag in PopClientAttrib");
            break;
      }

      next = attr->next;
      free( (void *) attr->data );
      free( (void *) attr );
      attr = next;
   }

   ctx->NewState = NEW_ALL;
}
