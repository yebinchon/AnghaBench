#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int len; char* start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__,int) ; 
 TYPE_1__ FUNC1 (TYPE_1__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_1__*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_1__*,TYPE_1__*) ; 

bool FUNC4(void *talloc_ctx, bstr *dst, bstr *src)
{
    bstr t = *src;
    int cur = 0;
    while (1) {
        if (cur >= t.len || t.start[cur] == '"') {
            *src = FUNC0(t, cur);
            t = FUNC1(t, 0, cur);
            if (dst->start == NULL) {
                *dst = t;
            } else {
                FUNC2(talloc_ctx, dst, t);
            }
            return true;
        } else if (t.start[cur] == '\\') {
            FUNC2(talloc_ctx, dst, FUNC1(t, 0, cur));
            t = FUNC0(t, cur + 1);
            cur = 0;
            if (!FUNC3(talloc_ctx, dst, &t))
                goto error;
        } else {
            cur++;
        }
    }
error:
    return false;
}