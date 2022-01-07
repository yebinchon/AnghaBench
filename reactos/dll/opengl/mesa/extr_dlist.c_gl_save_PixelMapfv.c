
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* PixelMapfv ) (TYPE_3__*,int ,int,int const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int i; void* data; int e; } ;
typedef TYPE_2__ Node ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int MEMCPY (void*,void*,int) ;
 int OPCODE_PIXEL_MAP ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 scalar_t__ malloc (int) ;
 int stub1 (TYPE_3__*,int ,int,int const*) ;

void gl_save_PixelMapfv( GLcontext *ctx,
                         GLenum map, GLint mapsize, const GLfloat *values )
{
   Node *n = alloc_instruction( ctx, OPCODE_PIXEL_MAP, 3 );
   if (n) {
      n[1].e = map;
      n[2].i = mapsize;
      n[3].data = (void *) malloc( mapsize * sizeof(GLfloat) );
      MEMCPY( n[3].data, (void *) values, mapsize * sizeof(GLfloat) );
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.PixelMapfv)( ctx, map, mapsize, values );
   }
}
