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
 int RTLD_LAZY ; 
 int RTLD_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (char*,int) ; 
 void* FUNC2 (void*,char const*) ; 

__attribute__((used)) static void *FUNC3(const char *s)
{
    void *ret = NULL;
    void *handle = FUNC1(
        "/System/Library/Frameworks/OpenGL.framework/OpenGL",
        RTLD_LAZY | RTLD_LOCAL);
    if (!handle)
        return NULL;
    ret = FUNC2(handle, s);
    FUNC0(handle);
    return ret;
}