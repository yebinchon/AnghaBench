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
typedef  scalar_t__ PFNGLTEXBUFFERARBPROC ;
typedef  scalar_t__ (* GLADloadproc ) (char*) ;

/* Variables and functions */
 int /*<<< orphan*/  GLAD_GL_ARB_texture_buffer_object ; 
 scalar_t__ glad_glTexBufferARB ; 

__attribute__((used)) static void FUNC0(GLADloadproc load) {
	if(!GLAD_GL_ARB_texture_buffer_object) return;
	glad_glTexBufferARB = (PFNGLTEXBUFFERARBPROC)load("glTexBufferARB");
}