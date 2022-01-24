#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct MPContext {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  start; scalar_t__ len; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 TYPE_1__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_1__*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_1__*,TYPE_1__*) ; 
 char* FUNC4 (struct MPContext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 

char *FUNC8(struct MPContext *mpctx, const char *str)
{
    void *tmp = FUNC6(NULL);
    bstr strb = FUNC0(str);
    bstr dst = {0};
    while (strb.len) {
        if (!FUNC3(tmp, &dst, &strb)) {
            FUNC5(tmp);
            return FUNC7(NULL, "(broken escape sequences)");
        }
        // pass " through literally
        if (!FUNC1(&strb, "\""))
            break;
        FUNC2(tmp, &dst, FUNC0("\""));
    }
    char *r = FUNC4(mpctx, dst.start);
    FUNC5(tmp);
    return r;
}