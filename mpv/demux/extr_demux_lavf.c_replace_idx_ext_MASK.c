#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int len; char* start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (void*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *FUNC4(void *ta_ctx, bstr f)
{
    if (f.len < 4 || f.start[f.len - 4] != '.')
        return NULL;
    char *ext = FUNC1(f, "IDX") ? "SUB" : "sub"; // match case
    return FUNC3(ta_ctx, "%.*s.%s", FUNC0(FUNC2(f, 0, -4)), ext);
}