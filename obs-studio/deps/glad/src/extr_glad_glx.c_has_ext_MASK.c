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
 int /*<<< orphan*/  GLADGLXDisplay ; 
 int /*<<< orphan*/  GLADGLXscreen ; 
 int /*<<< orphan*/  GLAD_GLX_VERSION_1_1 ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *ext) {
    const char *terminator;
    const char *loc;
    const char *extensions;

    if(!GLAD_GLX_VERSION_1_1)
        return 0;

    extensions = FUNC0(GLADGLXDisplay, GLADGLXscreen);

    if(extensions == NULL || ext == NULL)
        return 0;

    while(1) {
        loc = FUNC2(extensions, ext);
        if(loc == NULL)
            break;

        terminator = loc + FUNC1(ext);
        if((loc == extensions || *(loc - 1) == ' ') &&
            (*terminator == ' ' || *terminator == '\0'))
        {
            return 1;
        }
        extensions = terminator;
    }

    return 0;
}