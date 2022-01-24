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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (),int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  glBindBuffer ; 
 int /*<<< orphan*/  glBindFramebuffer ; 
 int /*<<< orphan*/  glBindTexture ; 
 int /*<<< orphan*/  glBlitFramebuffer ; 
 int /*<<< orphan*/  glBufferData ; 
 int /*<<< orphan*/  glDeleteBuffers ; 
 int /*<<< orphan*/  glDeleteFramebuffers ; 
 int /*<<< orphan*/  glDeleteTextures ; 
 int /*<<< orphan*/  glDrawBuffer ; 
 int /*<<< orphan*/  glFramebufferTexture2D ; 
 int /*<<< orphan*/  glGenBuffers ; 
 int /*<<< orphan*/  glGenFramebuffers ; 
 int /*<<< orphan*/  glGenTextures ; 
 int /*<<< orphan*/  glGetError ; 
 int /*<<< orphan*/  glGetIntegerv ; 
 int /*<<< orphan*/  glGetTexImage ; 
 int /*<<< orphan*/  glMapBuffer ; 
 int /*<<< orphan*/  glReadBuffer ; 
 int /*<<< orphan*/  glTexImage2D ; 
 int /*<<< orphan*/  glUnmapBuffer ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  jimglGetCurrentContext ; 
 int /*<<< orphan*/  jimglGetCurrentDC ; 
 int /*<<< orphan*/  jimglGetProcAddress ; 
 int /*<<< orphan*/  jimglMakeCurrent ; 
 int /*<<< orphan*/  wglGetCurrentContext ; 
 int /*<<< orphan*/  wglGetCurrentDC ; 
 int /*<<< orphan*/  wglMakeCurrent ; 

__attribute__((used)) static bool FUNC4(void)
{
	bool success = true;

	jimglGetProcAddress = FUNC1("wglGetProcAddress");
	if (!jimglGetProcAddress) {
		FUNC2("init_gl_functions: failed to get wglGetProcAddress");
		return false;
	}

	FUNC0(init_gl_functions, jimglMakeCurrent, wglMakeCurrent);
	FUNC0(init_gl_functions, jimglGetCurrentDC, wglGetCurrentDC);
	FUNC0(init_gl_functions, jimglGetCurrentContext,
		 wglGetCurrentContext);
	FUNC0(init_gl_functions, glTexImage2D, glTexImage2D);
	FUNC0(init_gl_functions, glReadBuffer, glReadBuffer);
	FUNC0(init_gl_functions, glGetTexImage, glGetTexImage);
	FUNC0(init_gl_functions, glDrawBuffer, glDrawBuffer);
	FUNC0(init_gl_functions, glGetError, glGetError);
	FUNC0(init_gl_functions, glBufferData, glBufferData);
	FUNC0(init_gl_functions, glDeleteBuffers, glDeleteBuffers);
	FUNC0(init_gl_functions, glDeleteTextures, glDeleteTextures);
	FUNC0(init_gl_functions, glGenBuffers, glGenBuffers);
	FUNC0(init_gl_functions, glGenTextures, glGenTextures);
	FUNC0(init_gl_functions, glMapBuffer, glMapBuffer);
	FUNC0(init_gl_functions, glUnmapBuffer, glUnmapBuffer);
	FUNC0(init_gl_functions, glBindBuffer, glBindBuffer);
	FUNC0(init_gl_functions, glGetIntegerv, glGetIntegerv);
	FUNC0(init_gl_functions, glBindTexture, glBindTexture);
	FUNC0(init_gl_functions, glGenFramebuffers, glGenFramebuffers);
	FUNC0(init_gl_functions, glDeleteFramebuffers, glDeleteFramebuffers);
	FUNC0(init_gl_functions, glBindFramebuffer, glBindFramebuffer);
	FUNC0(init_gl_functions, glBlitFramebuffer, glBlitFramebuffer);
	FUNC0(init_gl_functions, glFramebufferTexture2D,
		 glFramebufferTexture2D);

	FUNC3();
	return success;
}