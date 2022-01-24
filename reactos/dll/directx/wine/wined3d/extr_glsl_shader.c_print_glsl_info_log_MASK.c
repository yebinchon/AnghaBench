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
struct wined3d_gl_info {int quirks; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int WINED3D_QUIRK_INFO_LOG_SPAM ; 
 int /*<<< orphan*/  d3d_shader ; 
 char* FUNC5 (char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(const struct wined3d_gl_info *gl_info, GLuint id, BOOL program)
{
    int length = 0;
    char *log;

    if (!FUNC4(d3d_shader) && !FUNC1(d3d_shader))
        return;

    if (program)
        FUNC2(FUNC7(id, GL_INFO_LOG_LENGTH, &length));
    else
        FUNC2(FUNC9(id, GL_INFO_LOG_LENGTH, &length));

    /* A size of 1 is just a null-terminated string, so the log should be bigger than
     * that if there are errors. */
    if (length > 1)
    {
        const char *ptr, *line;

        log = FUNC10(length);
        /* The info log is supposed to be zero-terminated, but at least some
         * versions of fglrx don't terminate the string properly. The reported
         * length does include the terminator, so explicitly set it to zero
         * here. */
        log[length - 1] = 0;
        if (program)
            FUNC2(FUNC6(id, length, NULL, log));
        else
            FUNC2(FUNC8(id, length, NULL, log));

        ptr = log;
        if (gl_info->quirks & WINED3D_QUIRK_INFO_LOG_SPAM)
        {
            FUNC3("Info log received from GLSL shader #%u:\n", id);
            while ((line = FUNC5(&ptr))) FUNC3("    %.*s", (int)(ptr - line), line);
        }
        else
        {
            FUNC0("Info log received from GLSL shader #%u:\n", id);
            while ((line = FUNC5(&ptr))) FUNC0("    %.*s", (int)(ptr - line), line);
        }
        FUNC11(log);
    }
}