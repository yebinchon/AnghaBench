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
struct TYPE_3__ {int /*<<< orphan*/  (* DeleteShader ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* AttachShader ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* GetTranslatedShaderSourceANGLE ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char const*) ;int /*<<< orphan*/  (* GetShaderiv ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* GetShaderInfoLog ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char const*) ;int /*<<< orphan*/  (* CompileShader ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ShaderSource ) (int /*<<< orphan*/ ,int,char const**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* CreateShader ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int GLint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  char const GLchar ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE ; 
 int /*<<< orphan*/  FUNC0 (struct ra*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra*,int,char*,char const*,...) ; 
 int MSGL_DEBUG ; 
 int MSGL_ERR ; 
 int MSGL_V ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 (struct ra*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 char* FUNC17 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC18(struct ra *ra, GLuint program,
                                  GLenum type, const char *source, bool *ok)
{
    GL *gl = FUNC4(ra);

    GLuint shader = gl->CreateShader(type);
    gl->ShaderSource(shader, 1, &source, NULL);
    gl->CompileShader(shader);
    GLint status = 0;
    gl->GetShaderiv(shader, GL_COMPILE_STATUS, &status);
    GLint log_length = 0;
    gl->GetShaderiv(shader, GL_INFO_LOG_LENGTH, &log_length);

    int pri = status ? (log_length > 1 ? MSGL_V : MSGL_DEBUG) : MSGL_ERR;
    const char *typestr = FUNC5(type);
    if (FUNC3(ra->log, pri)) {
        FUNC1(ra, pri, "%s shader source:\n", typestr);
        FUNC2(ra->log, pri, source);
    }
    if (log_length > 1) {
        GLchar *logstr = FUNC17(NULL, log_length + 1);
        gl->GetShaderInfoLog(shader, log_length, NULL, logstr);
        FUNC1(ra, pri, "%s shader compile log (status=%d):\n%s\n",
               typestr, status, logstr);
        FUNC16(logstr);
    }
    if (gl->GetTranslatedShaderSourceANGLE && FUNC3(ra->log, MSGL_DEBUG)) {
        GLint len = 0;
        gl->GetShaderiv(shader, GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE, &len);
        if (len > 0) {
            GLchar *sstr = FUNC17(NULL, len + 1);
            gl->GetTranslatedShaderSourceANGLE(shader, len, NULL, sstr);
            FUNC0(ra, "Translated shader:\n");
            FUNC2(ra->log, MSGL_DEBUG, sstr);
        }
    }

    gl->AttachShader(program, shader);
    gl->DeleteShader(shader);

    *ok &= status;
}