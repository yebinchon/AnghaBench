#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

void FUNC1( GLcontext *ctx,
                                GLenum format, GLsizei stride,
                                const GLvoid *pointer )
{
   /* Just execute since client-side state changes aren't put in
    * display lists.
    */
   FUNC0( ctx, format, stride, pointer );
}