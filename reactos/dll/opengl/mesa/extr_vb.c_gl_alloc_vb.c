
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vertex_buffer {float** Obj; float** TexCoord; int TexCoordSize; int ClipAndMask; scalar_t__ ClipOrMask; void* MonoNormal; void* MonoMaterial; void* MonoColor; int VertexSizeMask; scalar_t__* ClipMask; scalar_t__* MaterialMask; } ;
typedef size_t GLuint ;


 int CLIP_ALL_BITS ;
 void* GL_TRUE ;
 size_t VB_SIZE ;
 int VERTEX3_BIT ;
 scalar_t__ calloc (int,int) ;

struct vertex_buffer *gl_alloc_vb(void)
{
   struct vertex_buffer *vb;
   vb = (struct vertex_buffer *) calloc(sizeof(struct vertex_buffer), 1);
   if (vb) {

      GLuint i;
      for (i=0;i<VB_SIZE;i++) {
         vb->MaterialMask[i] = 0;
         vb->ClipMask[i] = 0;
         vb->Obj[i][3] = 1.0F;
         vb->TexCoord[i][2] = 0.0F;
         vb->TexCoord[i][3] = 1.0F;
      }
      vb->VertexSizeMask = VERTEX3_BIT;
      vb->TexCoordSize = 2;
      vb->MonoColor = GL_TRUE;
      vb->MonoMaterial = GL_TRUE;
      vb->MonoNormal = GL_TRUE;
      vb->ClipOrMask = 0;
      vb->ClipAndMask = CLIP_ALL_BITS;
   }
   return vb;
}
