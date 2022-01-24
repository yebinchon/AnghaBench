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
 int /*<<< orphan*/  FUNC0 (void*,size_t,char const*,int) ; 
 void* FUNC1 (size_t,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t) ; 

void *FUNC4(void *str, size_t old_len, size_t num,
                           const char *file, int line)
{
    void *ret = NULL;

    if (str == NULL)
        return FUNC1(num, file, line);

    if (num == 0) {
        FUNC0(str, old_len, file, line);
        return NULL;
    }

    /* Can't shrink the buffer since memcpy below copies |old_len| bytes. */
    if (num < old_len) {
        FUNC2((char*)str + num, old_len - num);
        return str;
    }

    ret = FUNC1(num, file, line);
    if (ret != NULL) {
        FUNC3(ret, str, old_len);
        FUNC0(str, old_len, file, line);
    }
    return ret;
}