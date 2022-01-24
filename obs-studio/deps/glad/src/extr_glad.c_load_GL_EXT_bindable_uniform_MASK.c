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
typedef  scalar_t__ PFNGLUNIFORMBUFFEREXTPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMOFFSETEXTPROC ;
typedef  scalar_t__ PFNGLGETUNIFORMBUFFERSIZEEXTPROC ;
typedef  scalar_t__ (* GLADloadproc ) (char*) ;

/* Variables and functions */
 int /*<<< orphan*/  GLAD_GL_EXT_bindable_uniform ; 
 scalar_t__ glad_glGetUniformBufferSizeEXT ; 
 scalar_t__ glad_glGetUniformOffsetEXT ; 
 scalar_t__ glad_glUniformBufferEXT ; 

__attribute__((used)) static void FUNC0(GLADloadproc load) {
	if(!GLAD_GL_EXT_bindable_uniform) return;
	glad_glUniformBufferEXT = (PFNGLUNIFORMBUFFEREXTPROC)load("glUniformBufferEXT");
	glad_glGetUniformBufferSizeEXT = (PFNGLGETUNIFORMBUFFERSIZEEXTPROC)load("glGetUniformBufferSizeEXT");
	glad_glGetUniformOffsetEXT = (PFNGLGETUNIFORMOFFSETEXTPROC)load("glGetUniformOffsetEXT");
}