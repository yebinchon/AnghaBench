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
typedef  int /*<<< orphan*/  template ;
typedef  int mode_t ;

/* Variables and functions */
 int ENOENT ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC0 (int) ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_NOATIME ; 
 int O_NOFOLLOW ; 
 int O_RDWR ; 
 int O_TMPFILE ; 
 int PATH_MAX ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char*,int,int) ; 
 int FUNC4 (char*,int,char*,char*) ; 
 char* temp_dir ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(void)
{
    char template[PATH_MAX];
    mode_t prev_mask;
    int ret;

    if (FUNC1(!temp_dir))
        return -ENOENT;

#if defined(O_TMPFILE)
    int fd = open(temp_dir,
                  O_TMPFILE | O_CREAT | O_RDWR | O_EXCL | O_CLOEXEC |
                      O_NOFOLLOW | O_NOATIME,
                  S_IRUSR | S_IWUSR);
    if (LIKELY(fd >= 0))
        return fd;
#endif

    ret = FUNC4(template, sizeof(template), "%s/lwanXXXXXX", temp_dir);
    if (FUNC1(ret < 0 || ret >= (int)sizeof(template)))
        return -EOVERFLOW;

    prev_mask = FUNC5(S_IRUSR | S_IWUSR);
    ret = FUNC2(template, O_CLOEXEC);
    FUNC5(prev_mask);

    if (FUNC0(ret >= 0))
        FUNC6(template);

    return ret;
}