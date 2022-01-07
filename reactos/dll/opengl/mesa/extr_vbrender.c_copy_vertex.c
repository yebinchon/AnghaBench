
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vertex_buffer {int ** Material; int * MaterialMask; int * ClipMask; int * Edgeflag; int * Bindex; int * Findex; int * TexCoord; int * Bcolor; int * Fcolor; int * Win; int * Eye; int * Clip; } ;
typedef size_t GLuint ;


 int COPY_3V (int ,int ) ;
 int COPY_4V (int ,int ) ;

__attribute__((used)) static void copy_vertex( struct vertex_buffer *vb, GLuint dst, GLuint src )
{
   COPY_4V( vb->Clip[dst], vb->Clip[src] );
   COPY_4V( vb->Eye[dst], vb->Eye[src] );
   COPY_3V( vb->Win[dst], vb->Win[src] );
   COPY_4V( vb->Fcolor[dst], vb->Fcolor[src] );
   COPY_4V( vb->Bcolor[dst], vb->Bcolor[src] );
   COPY_4V( vb->TexCoord[dst], vb->TexCoord[src] );
   vb->Findex[dst] = vb->Findex[src];
   vb->Bindex[dst] = vb->Bindex[src];
   vb->Edgeflag[dst] = vb->Edgeflag[src];
   vb->ClipMask[dst] = vb->ClipMask[src];
   vb->MaterialMask[dst] = vb->MaterialMask[src];
   vb->Material[dst][0] = vb->Material[src][0];
   vb->Material[dst][1] = vb->Material[src][1];
}
