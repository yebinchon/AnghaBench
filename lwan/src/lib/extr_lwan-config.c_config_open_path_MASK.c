#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
struct TYPE_2__ {void* addr; size_t sz; } ;
struct config {TYPE_1__ mapped; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 struct config* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 int FUNC6 (char const*,int) ; 

__attribute__((used)) static struct config *
FUNC7(const char *path, void **data, size_t *size)
{
    struct config *config;
    struct stat st;
    void *mapped;
    int fd;

    fd = FUNC6(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) {
        FUNC2("Could not open configuration file: %s", path);
        return NULL;
    }

    if (FUNC1(fd, &st) < 0) {
        FUNC0(fd);
        return NULL;
    }

    mapped = FUNC4(NULL, (size_t)st.st_size, PROT_READ, MAP_SHARED, fd, 0);
    FUNC0(fd);
    if (mapped == MAP_FAILED)
        return NULL;

    config = FUNC3(sizeof(*config));
    if (!config) {
        FUNC5(mapped, (size_t)st.st_size);
        return NULL;
    }

    *data = config->mapped.addr = mapped;
    *size = config->mapped.sz = (size_t)st.st_size;

    return config;
}