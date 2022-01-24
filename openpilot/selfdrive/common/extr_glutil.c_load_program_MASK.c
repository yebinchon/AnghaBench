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
typedef  int /*<<< orphan*/  GLuint ;
typedef  int GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  stderr ; 

GLuint FUNC11(const char *vert_src, const char *frag_src) {
  GLuint vert, frag, prog;
  GLint status = 0, len = 0;

  if (!(vert = FUNC9(GL_VERTEX_SHADER, vert_src)))
    return 0;
  if (!(frag = FUNC9(GL_FRAGMENT_SHADER, frag_src)))
    goto fail_frag;
  if (!(prog = FUNC3()))
    goto fail_prog;

  FUNC2(prog, vert);
  FUNC2(prog, frag);
  FUNC8(prog);

  FUNC7(prog, GL_LINK_STATUS, &status);
  if (status)
    return prog;

  FUNC7(prog, GL_INFO_LOG_LENGTH, &len);
  if (len) {
    char *buf = (char*) FUNC10(len);
    if (buf) {
      FUNC6(prog, len, NULL, buf);
      buf[len-1] = 0;
      FUNC0(stderr, "error linking program:\n%s\n", buf);
      FUNC1(buf);
    }
  }
  FUNC4(prog);
fail_prog:
  FUNC5(frag);
fail_frag:
  FUNC5(vert);
  return 0;
}