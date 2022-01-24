#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* Shared; } ;
struct TYPE_4__ {int /*<<< orphan*/  DisplayList; } ;
typedef  scalar_t__ GLuint ;
typedef  TYPE_2__ GLcontext ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

GLboolean FUNC1( GLcontext *ctx, GLuint list )
{
   if (list > 0 && FUNC0(ctx->Shared->DisplayList, list)) {
      return GL_TRUE;
   }
   else {
      return GL_FALSE;
   }
}