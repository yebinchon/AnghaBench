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
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int,char const*,char*,char const*) ; 
 char* FUNC1 (char*) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int) ; 

char *FUNC4(const char *path, const char *subpath) {
    if(FUNC3(!path || !*path)) path = ".";
    if(FUNC3(!subpath)) subpath = "";

    // skip trailing slashes in path
    size_t len = FUNC2(path);
    while(len > 0 && path[len - 1] == '/') len--;

    // skip leading slashes in subpath
    while(subpath[0] == '/') subpath++;

    // if the last character in path is / and (there is a subpath or path is now empty)
    // keep the trailing slash in path and remove the additional slash
    char *slash = "/";
    if(path[len] == '/' && (*subpath || len == 0)) {
        slash = "";
        len++;
    }
    else if(!*subpath) {
        // there is no subpath
        // no need for trailing slash
        slash = "";
    }

    char buffer[FILENAME_MAX + 1];
    FUNC0(buffer, FILENAME_MAX, "%.*s%s%s", (int)len, path, slash, subpath);
    return FUNC1(buffer);
}