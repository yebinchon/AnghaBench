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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (size_t) ; 

__attribute__((used)) static inline char *FUNC2(const WCHAR *str)
{
    char *ret = NULL;

    if(str) {
        size_t size = FUNC0(CP_ACP, 0, str, -1, NULL, 0, NULL, NULL);
        ret = FUNC1(size);
        if(ret)
            FUNC0(CP_ACP, 0, str, -1, ret, size, NULL, NULL);
    }

    return ret;
}