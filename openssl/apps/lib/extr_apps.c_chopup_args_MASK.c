#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t argc; int size; char** argv; } ;
typedef  TYPE_1__ ARGS ;

/* Variables and functions */
 char** FUNC0 (char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 char** FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(ARGS *arg, char *buf)
{
    int quoted;
    char c = '\0', *p = NULL;

    arg->argc = 0;
    if (arg->size == 0) {
        arg->size = 20;
        arg->argv = FUNC2(sizeof(*arg->argv) * arg->size, "argv space");
    }

    for (p = buf;;) {
        /* Skip whitespace. */
        while (*p && FUNC3(FUNC1(*p)))
            p++;
        if (*p == '\0')
            break;

        /* The start of something good :-) */
        if (arg->argc >= arg->size) {
            char **tmp;
            arg->size += 20;
            tmp = FUNC0(arg->argv, sizeof(*arg->argv) * arg->size);
            if (tmp == NULL)
                return 0;
            arg->argv = tmp;
        }
        quoted = *p == '\'' || *p == '"';
        if (quoted)
            c = *p++;
        arg->argv[arg->argc++] = p;

        /* now look for the end of this */
        if (quoted) {
            while (*p && *p != c)
                p++;
            *p++ = '\0';
        } else {
            while (*p && !FUNC3(FUNC1(*p)))
                p++;
            if (*p)
                *p++ = '\0';
        }
    }
    arg->argv[arg->argc] = NULL;
    return 1;
}