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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const) ; 

__attribute__((used)) static DWORD FUNC6(const char *gl_version)
{
    const char *ptr = gl_version;
    int major, minor;

    major = FUNC3(ptr);
    if (major <= 0)
        FUNC0("Invalid OpenGL major version %d.\n", major);

    while (FUNC5(*ptr)) ++ptr;
    if (*ptr++ != '.')
        FUNC0("Invalid OpenGL version string %s.\n", FUNC4(gl_version));

    minor = FUNC3(ptr);

    FUNC2("Found OpenGL version %d.%d.\n", major, minor);

    return FUNC1(major, minor);
}