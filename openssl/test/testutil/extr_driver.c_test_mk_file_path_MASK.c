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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (size_t) ; 
 int FUNC3 (char const*) ; 

char *FUNC4(const char *dir, const char *file)
{
# ifndef OPENSSL_SYS_VMS
    const char *sep = "/";
# else
    const char *sep = "";
# endif
    size_t len = FUNC3(dir) + FUNC3(sep) + FUNC3(file) + 1;
    char *full_file = FUNC2(len);

    if (full_file != NULL) {
        FUNC1(full_file, dir, len);
        FUNC0(full_file, sep, len);
        FUNC0(full_file, file, len);
    }

    return full_file;
}