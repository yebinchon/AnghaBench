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
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  stderr ; 

GLuint FUNC9(GLenum shaderType, const char *src) {
  GLint status = 0, len = 0;
  GLuint shader;

  if (!(shader = FUNC3(shaderType)))
    return 0;

  FUNC7(shader, 1, &src, NULL);
  FUNC2(shader);
  FUNC6(shader, GL_COMPILE_STATUS, &status);

  if (status)
    return shader;

  FUNC6(shader, GL_INFO_LOG_LENGTH, &len);
  if (len) {
    char *msg = (char*)FUNC8(len);
    if (msg) {
      FUNC5(shader, len, NULL, msg);
      msg[len-1] = 0;
      FUNC0(stderr, "error compiling shader:\n%s\n", msg);
      FUNC1(msg);
    }
  }
  FUNC4(shader);
  return 0;
}