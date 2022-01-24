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
struct output {size_t used; size_t capacity; char* ptr; } ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 char* FUNC1 (char*,int) ; 

__attribute__((used)) static int
FUNC2(struct output *output, const char *str, size_t str_len)
{
    size_t total_size = output->used + str_len;

    if (total_size >= output->capacity) {
        char *tmp;

        while (total_size >= output->capacity)
            output->capacity *= 2;

        tmp = FUNC1(output->ptr, output->capacity);
        if (!tmp)
            return -errno;

        output->ptr = tmp;
    }

    FUNC0(output->ptr + output->used, str, str_len);
    output->used = total_size;

    return 0;
}