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
struct stat {scalar_t__ st_size; } ;
struct lwan_var_descriptor {int dummy; } ;
struct lwan_tpl {int dummy; } ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct lwan_tpl* FUNC3 (char*,struct lwan_var_descriptor const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,size_t) ; 
 int FUNC6 (char const*,int) ; 

struct lwan_tpl *
FUNC7(const char *filename,
                      const struct lwan_var_descriptor *descriptor)
{
    int fd;
    struct stat st;
    char *mapped;
    struct lwan_tpl *tpl = NULL;

    fd = FUNC6(filename, O_RDONLY | O_CLOEXEC);
    if (fd < 0)
        goto end;

    if (FUNC1(fd, &st) < 0)
        goto close_file;

    mapped = FUNC4(NULL, (size_t)st.st_size, PROT_READ, MAP_SHARED, fd, 0);
    if (mapped == MAP_FAILED)
        goto close_file;

    tpl = FUNC3(mapped, descriptor);

    if (FUNC5(mapped, (size_t)st.st_size) < 0)
        FUNC2("munmap");

close_file:
    FUNC0(fd);
end:
    return tpl;
}