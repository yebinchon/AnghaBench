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
typedef  scalar_t__ PFNGLXSET3DFXMODEMESAPROC ;
typedef  scalar_t__ (* GLADloadproc ) (char*) ;

/* Variables and functions */
 int /*<<< orphan*/  GLAD_GLX_MESA_set_3dfx_mode ; 
 scalar_t__ glad_glXSet3DfxModeMESA ; 

__attribute__((used)) static void FUNC0(GLADloadproc load) {
	if(!GLAD_GLX_MESA_set_3dfx_mode) return;
	glad_glXSet3DfxModeMESA = (PFNGLXSET3DFXMODEMESAPROC)load("glXSet3DfxModeMESA");
}