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
struct input_ctx {int dummy; } ;
struct bstr {scalar_t__ len; } ;

/* Variables and functions */
 int FUNC0 (struct bstr,struct bstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_ctx*,int) ; 

void FUNC2(struct input_ctx *ictx, int mods, struct bstr t)
{
    while (t.len) {
        int code = FUNC0(t, &t);
        if (code < 0)
            break;
        FUNC1(ictx, code | mods);
    }
}