#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vertex_buffer {int** Win; } ;
struct TYPE_4__ {struct vertex_buffer* VB; } ;
typedef  size_t GLuint ;
typedef  TYPE_1__ GLcontext ;

/* Variables and functions */
 int DEPTH_SCALE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC1( GLcontext *ctx,
                             GLuint v0, GLuint v1, GLuint v2, GLuint pv )
{
   struct vertex_buffer *VB = ctx->VB;

   FUNC0( ctx, VB->Win[v0][2] / DEPTH_SCALE );
   FUNC0( ctx, VB->Win[v1][2] / DEPTH_SCALE );
   FUNC0( ctx, VB->Win[v2][2] / DEPTH_SCALE );
}