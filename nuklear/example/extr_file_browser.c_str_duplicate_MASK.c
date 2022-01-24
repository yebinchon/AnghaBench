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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static char*
FUNC3(const char *src)
{
    char *ret;
    size_t len = FUNC2(src);
    if (!len) return 0;
    ret = (char*)FUNC0(len+1);
    if (!ret) return 0;
    FUNC1(ret, src, len);
    ret[len] = '\0';
    return ret;
}