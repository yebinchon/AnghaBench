#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vertex_buffer {size_t Count; int /*<<< orphan*/ * Edgeflag; int /*<<< orphan*/ * TexCoord; int /*<<< orphan*/ * Normal; int /*<<< orphan*/ * Findex; int /*<<< orphan*/ * Fcolor; int /*<<< orphan*/ * Obj; } ;
struct TYPE_5__ {int /*<<< orphan*/  EdgeFlag; int /*<<< orphan*/  TexCoord; int /*<<< orphan*/  Normal; int /*<<< orphan*/  Index; int /*<<< orphan*/  ByteColor; } ;
struct TYPE_6__ {TYPE_1__ Current; struct vertex_buffer* VB; } ;
typedef  size_t GLuint ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_2__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FALSE ; 
 size_t VB_MAX ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( GLcontext *ctx,
                               GLfloat x, GLfloat y, GLfloat z, GLfloat w )
{
   struct vertex_buffer *VB = ctx->VB;
   GLuint count = VB->Count;

   /* vertex */
   FUNC0( VB->Obj[count], x, y, z, w );

   /* color */
   FUNC2( VB->Fcolor[count], ctx->Current.ByteColor );

   /* index */
   VB->Findex[count] = ctx->Current.Index;

   /* normal */
   FUNC1( VB->Normal[count], ctx->Current.Normal );

   /* texcoord */
   FUNC3( VB->TexCoord[count], ctx->Current.TexCoord );

   /* edgeflag */
   VB->Edgeflag[count] = ctx->Current.EdgeFlag;

   count++;
   VB->Count = count;
   if (count==VB_MAX) {
      FUNC4( ctx, GL_FALSE );
   }
}