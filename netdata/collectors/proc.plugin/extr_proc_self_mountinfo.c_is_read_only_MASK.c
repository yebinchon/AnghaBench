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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static inline int FUNC4(const char *s) {
    if(!s) return 0;

    size_t len = FUNC1(s);
    if(len < 2) return 0;
    if(len == 2) {
        if(!FUNC0(s, "ro")) return 1;
        return 0;
    }
    if(!FUNC2(s, "ro,", 3)) return 1;
    if(!FUNC2(&s[len - 3], ",ro", 3)) return 1;
    if(FUNC3(s, ",ro,")) return 1;
    return 0;
}