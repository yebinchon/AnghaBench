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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(const char *prefix, const char *file,
                              int line, const char *type,
                              const char *left, const char *right,
                              const char *op)
{
    FUNC0("%s: ", prefix != NULL ? prefix : "ERROR");
    if (type)
        FUNC0("(%s) ", type);
    if (op != NULL) {
        if (left != NULL && right != NULL)
            FUNC0("'%s %s %s' failed", left, op, right);
        else
            FUNC0("'%s'", op);
    }
    if (file != NULL) {
        FUNC0(" @ %s:%d", file, line);
    }
    FUNC0("\n");
}