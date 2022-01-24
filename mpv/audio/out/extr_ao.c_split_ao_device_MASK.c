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
struct TYPE_5__ {scalar_t__ len; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*,TYPE_1__*) ; 
 char* FUNC2 (void*,TYPE_1__) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void *tmp, char *opt, char **out_ao, char **out_dev)
{
    *out_ao = NULL;
    *out_dev = NULL;
    if (!opt)
        return;
    if (!opt[0] || FUNC3(opt, "auto") == 0)
        return;
    // Split on "/". If "/" is the final character, or absent, out_dev is NULL.
    bstr b_dev, b_ao;
    FUNC1(FUNC0(opt), "/", &b_ao, &b_dev);
    if (b_dev.len > 0)
        *out_dev = FUNC2(tmp, b_dev);
    *out_ao = FUNC2(tmp, b_ao);
}