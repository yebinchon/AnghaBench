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
struct gc_arena {int dummy; } ;
struct buffer {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* FUNC1 (struct buffer*) ; 
 char const* PATH_SEPARATOR_STR ; 
 struct buffer FUNC2 (int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,char*,char const*,char const*,char const*) ; 
 int FUNC4 (int const,char const*,int const,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct gc_arena*) ; 
 struct gc_arena FUNC6 () ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static bool
FUNC8(const char *chroot, const int type, const char *file, const int mode, const char *opt)
{
    bool ret = false;

    /* If no file configured, no errors to look for */
    if (!file)
    {
        return false;
    }

    /* If chroot is set, look for the file/directory inside the chroot */
    if (chroot)
    {
        struct gc_arena gc = FUNC6();
        struct buffer chroot_file;
        int len = 0;

        /* Build up a new full path including chroot directory */
        len = FUNC7(chroot) + FUNC7(PATH_SEPARATOR_STR) + FUNC7(file) + 1;
        chroot_file = FUNC2(len, &gc);
        FUNC3(&chroot_file, "%s%s%s", chroot, PATH_SEPARATOR_STR, file);
        FUNC0(chroot_file.len > 0);

        ret = FUNC4(type, FUNC1(&chroot_file), mode, opt);
        FUNC5(&gc);
    }
    else
    {
        /* No chroot in play, just call core file check function */
        ret = FUNC4(type, file, mode, opt);
    }
    return ret;
}