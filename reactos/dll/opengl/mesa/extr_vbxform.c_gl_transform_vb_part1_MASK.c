#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vertex_buffer {scalar_t__ Count; scalar_t__ VertexSizeMask; scalar_t__ Start; scalar_t__ Obj; scalar_t__ Eye; scalar_t__ Normal; } ;
struct TYPE_7__ {int /*<<< orphan*/  Normalize; } ;
struct TYPE_8__ {int /*<<< orphan*/  VertexTime; TYPE_1__ Transform; int /*<<< orphan*/  ModelViewInv; scalar_t__ NeedNormals; struct vertex_buffer* VB; } ;
typedef  scalar_t__ GLdouble ;
typedef  TYPE_2__ GLcontext ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VERTEX4_BIT ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 

void FUNC6( GLcontext *ctx, GLboolean allDone )
{
   struct vertex_buffer *VB = ctx->VB;
#ifdef PROFILE
   GLdouble t0 = gl_time();
#endif

   FUNC0( VB->Count>0 );

   /* Apply the modelview matrix to transform vertexes from Object
    * to Eye coords.
    */
   if (VB->VertexSizeMask==VERTEX4_BIT) {
      FUNC5( ctx, VB->Count - VB->Start,
                         VB->Obj + VB->Start, VB->Eye + VB->Start );
   }
   else {
      FUNC4( ctx, VB->Count - VB->Start,
                         VB->Obj + VB->Start, VB->Eye + VB->Start );
   }

   /* Now transform the normal vectors */
   if (ctx->NeedNormals) {
      FUNC3( VB->Count - VB->Start,
                            VB->Normal + VB->Start, ctx->ModelViewInv,
                            VB->Normal + VB->Start, ctx->Transform.Normalize );
   }

#ifdef PROFILE
   ctx->VertexTime += gl_time() - t0;
#endif

   /* lighting, project, etc */
   FUNC2( ctx, allDone );
}