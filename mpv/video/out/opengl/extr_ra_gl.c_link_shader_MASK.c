#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ra {int /*<<< orphan*/  log; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* GetProgramInfoLog ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* GetProgramiv ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* LinkProgram ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int GLint ;
typedef  int /*<<< orphan*/  GLchar ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ra*,int,char*,int,int /*<<< orphan*/ *) ; 
 int MSGL_DEBUG ; 
 int MSGL_ERR ; 
 int MSGL_V ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (struct ra*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct ra *ra, GLuint program, bool *ok)
{
    GL *gl = FUNC2(ra);

    gl->LinkProgram(program);
    GLint status = 0;
    gl->GetProgramiv(program, GL_LINK_STATUS, &status);
    GLint log_length = 0;
    gl->GetProgramiv(program, GL_INFO_LOG_LENGTH, &log_length);

    int pri = status ? (log_length > 1 ? MSGL_V : MSGL_DEBUG) : MSGL_ERR;
    if (FUNC1(ra->log, pri)) {
        GLchar *logstr = FUNC8(NULL, log_length + 1);
        gl->GetProgramInfoLog(program, log_length, NULL, logstr);
        FUNC0(ra, pri, "shader link log (status=%d): %s\n", status, logstr);
        FUNC7(logstr);
    }

    *ok &= status;
}