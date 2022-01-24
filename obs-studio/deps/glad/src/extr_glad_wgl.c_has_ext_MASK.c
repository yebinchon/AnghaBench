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
 scalar_t__ GLADWGLhdc ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char const*) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 () ; 

__attribute__((used)) static int FUNC4(const char *ext) {
    const char *terminator;
    const char *loc;
    const char *extensions;

    if(&wglGetExtensionsStringEXT == NULL && &wglGetExtensionsStringARB == NULL)
        return 0;

    if(&wglGetExtensionsStringARB == NULL || GLADWGLhdc == INVALID_HANDLE_VALUE)
        extensions = FUNC3();
    else
        extensions = FUNC2(GLADWGLhdc);

    if(extensions == NULL || ext == NULL)
        return 0;

    while(1) {
        loc = FUNC1(extensions, ext);
        if(loc == NULL)
            break;

        terminator = loc + FUNC0(ext);
        if((loc == extensions || *(loc - 1) == ' ') &&
            (*terminator == ' ' || *terminator == '\0'))
        {
            return 1;
        }
        extensions = terminator;
    }

    return 0;
}