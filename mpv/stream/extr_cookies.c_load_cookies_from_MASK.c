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
struct mp_log {int dummy; } ;
struct cookie_list_type {int secure; struct cookie_list_type* next; void* domain; void* path; void* value; void* name; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 void* FUNC0 (struct cookie_list_type*,char*) ; 
 int /*<<< orphan*/  cookie_list_t ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct mp_log*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char**,char**) ; 
 struct cookie_list_type* FUNC4 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cookie_list_type *FUNC5(void *ctx,
                                                  struct mp_log *log,
                                                  const char *filename)
{
    char *ptr, *file;
    int64_t length;

    ptr = file = FUNC2(log, filename, &length);
    if (!ptr)
        return NULL;

    struct cookie_list_type *list = NULL;
    while (*ptr) {
        char *cols[7];
        if (FUNC3(&ptr, cols)) {
            struct cookie_list_type *new;
            new = FUNC4(ctx, cookie_list_t);
            new->name = FUNC0(new, cols[5]);
            new->value = FUNC0(new, cols[6]);
            new->path = FUNC0(new, cols[2]);
            new->domain = FUNC0(new, cols[0]);
            new->secure = (*(cols[3]) == 't') || (*(cols[3]) == 'T');
            new->next = list;
            list = new;
        }
    }
    FUNC1(file);
    return list;
}