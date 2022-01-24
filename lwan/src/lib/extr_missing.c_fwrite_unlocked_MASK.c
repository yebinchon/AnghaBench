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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void const*,size_t) ; 

size_t FUNC3(const void *ptr, size_t size, size_t n, FILE *stream)
{
    size_t to_write = size * n;
    const size_t total_to_write = to_write;

    if (!to_write)
        return 0;

    FUNC0/* _unlocked? */(stream);

    while (to_write) {
        ssize_t r = FUNC2(FUNC1(stream), ptr, to_write);
        if (r < 0) {
            if (errno == EINTR)
                continue;
            break;
        }

        to_write -= (size_t)r;
    }

    return (total_to_write - to_write) / size;
}