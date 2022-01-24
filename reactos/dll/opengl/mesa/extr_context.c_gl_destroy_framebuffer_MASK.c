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
struct TYPE_4__ {struct TYPE_4__* BackAlpha; struct TYPE_4__* FrontAlpha; struct TYPE_4__* Stencil; struct TYPE_4__* Accum; struct TYPE_4__* Depth; } ;
typedef  TYPE_1__ GLframebuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1( GLframebuffer *buffer )
{
   if (buffer) {
      if (buffer->Depth) {
         FUNC0( buffer->Depth );
      }
      if (buffer->Accum) {
         FUNC0( buffer->Accum );
      }
      if (buffer->Stencil) {
         FUNC0( buffer->Stencil );
      }
      if (buffer->FrontAlpha) {
         FUNC0( buffer->FrontAlpha );
      }
      if (buffer->BackAlpha) {
         FUNC0( buffer->BackAlpha );
      }
      FUNC0(buffer);
   }
}