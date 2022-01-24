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
 int FUNC0 (char const*,char*,int) ; 
 unsigned long long FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(const char *filename, unsigned long long *result) {
    char buffer[30 + 1];

    int ret = FUNC0(filename, buffer, 30);
    if(FUNC2(ret)) {
        *result = 0;
        return ret;
    }

    buffer[30] = '\0';
    *result = FUNC1(buffer);
    return 0;
}