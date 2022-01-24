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
struct file_backed_buffer {size_t size; void* ptr; } ;
struct coro {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 void* MAP_FAILED ; 
 int MAP_HUGETLB ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (struct coro*,size_t) ; 
 struct file_backed_buffer* FUNC4 (struct coro*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  free_post_buffer ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,size_t) ; 

__attribute__((used)) static void*
FUNC9(struct coro *coro, size_t size, bool allow_file)
{
    struct file_backed_buffer *buf;
    void *ptr = (void *)MAP_FAILED;
    int fd;

    if (FUNC0(size < 1<<20)) {
        ptr = FUNC3(coro, size);

        if (FUNC0(ptr))
            return ptr;
    }

    if (FUNC1(!allow_file))
        return NULL;

    fd = FUNC5();
    if (FUNC1(fd < 0))
        return NULL;

    if (FUNC1(FUNC6(fd, (off_t)size) < 0)) {
        FUNC2(fd);
        return NULL;
    }

    if (MAP_HUGETLB) {
        ptr = FUNC7(NULL, size, PROT_READ | PROT_WRITE,
                   MAP_SHARED | MAP_HUGETLB, fd, 0);
    }
    if (FUNC1(ptr == MAP_FAILED))
        ptr = FUNC7(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    FUNC2(fd);
    if (FUNC1(ptr == MAP_FAILED))
        return NULL;

    buf = FUNC4(coro, sizeof(*buf), free_post_buffer);
    if (FUNC1(!buf)) {
        FUNC8(ptr, size);
        return NULL;
    }

    buf->ptr = ptr;
    buf->size = size;
    return ptr;
}