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
struct stat {int st_mode; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 int FUNC3 (char const*,struct stat*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5(const char *path) {
    struct stat sb;

    char c;
    const char *s = path;
    while((c = *s++)) {
        if(!( FUNC2(c) || FUNC1(c) )) {
            FUNC0("invalid character in path '%s'", path);
            return -1;
        }
    }

    if(FUNC4(path, "\\") && !FUNC4(path, "\\x")) {
        FUNC0("invalid escape sequence in path '%s'", path);
        return 1;
    }

    if(FUNC4(path, "/../")) {
        FUNC0("invalid parent path sequence detected in '%s'", path);
        return 1;
    }

    if(path[0] != '/') {
        FUNC0("only absolute path names are supported - invalid path '%s'", path);
        return -1;
    }

    if (FUNC3(path, &sb) == -1) {
        FUNC0("cannot stat() path '%s'", path);
        return -1;
    }

    if((sb.st_mode & S_IFMT) != S_IFDIR) {
        FUNC0("path '%s' is not a directory", path);
        return -1;
    }

    return 0;
}