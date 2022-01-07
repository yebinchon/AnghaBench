
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct gl_image {int dummy; } ;
struct TYPE_9__ {TYPE_1__* Shared; } ;
struct TYPE_8__ {int opcode; scalar_t__ next; struct TYPE_8__* data; int e; } ;
struct TYPE_7__ {int DisplayList; } ;
typedef TYPE_2__ Node ;
typedef int GLuint ;
typedef int GLfloat ;
typedef TYPE_3__ GLcontext ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;
 scalar_t__ HashLookup (int ,int ) ;
 int HashRemove (int ,int ) ;
 int * InstSize ;
 int free (TYPE_2__*) ;
 int gl_free_control_points (TYPE_3__*,int ,int *) ;
 int gl_free_image (struct gl_image*) ;

void gl_destroy_list( GLcontext *ctx, GLuint list )
{
   Node *n, *block;
   GLboolean done;

   block = (Node *) HashLookup(ctx->Shared->DisplayList, list);
   n = block;

   done = block ? GL_FALSE : GL_TRUE;
   while (!done) {
      switch (n[0].opcode) {

  case 134:
     gl_free_control_points( ctx, n[1].e, (GLfloat *) n[6].data );
     n += InstSize[n[0].opcode];
     break;
  case 133:
     gl_free_control_points( ctx, n[1].e, (GLfloat *) n[10].data );
     n += InstSize[n[0].opcode];
     break;
  case 136:
     free( n[5].data );
     n += InstSize[n[0].opcode];
     break;
  case 140:
     gl_free_image( (struct gl_image *) n[7].data );
     n += InstSize[n[0].opcode];
     break;
         case 138:
            gl_free_image( (struct gl_image *) n[3].data );
            n += InstSize[n[0].opcode];
            break;
         case 139:
            gl_free_image( (struct gl_image *) n[3].data );
            n += InstSize[n[0].opcode];
            break;
         case 132:
            free( n[1].data );
     n += InstSize[n[0].opcode];
            break;
  case 131:
            gl_free_image( (struct gl_image *) n[8].data );
            n += InstSize[n[0].opcode];
     break;
  case 130:
            gl_free_image( (struct gl_image *) n[9].data );
            n += InstSize[n[0].opcode];
     break;
         case 129:
            {
               struct gl_image *image;
               image = (struct gl_image *) n[7].data;
               gl_free_image( image );
            }
            break;
         case 128:
            {
               struct gl_image *image;
               image = (struct gl_image *) n[9].data;
               gl_free_image( image );
            }
            break;
  case 137:
     n = (Node *) n[1].next;
     free( block );
     block = n;
     break;
  case 135:
     free( block );
     done = GL_TRUE;
     break;
  default:

     n += InstSize[n[0].opcode];
     break;
      }
   }

   HashRemove(ctx->Shared->DisplayList, list);
}
