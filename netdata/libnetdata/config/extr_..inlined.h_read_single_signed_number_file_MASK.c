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
 long long FUNC0 (char*) ; 
 int FUNC1 (char const*,char*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(const char *filename, long long *result) {
    char buffer[30 + 1];

    int ret = FUNC1(filename, buffer, 30);
    if(FUNC2(ret)) {
        *result = 0;
        return ret;
    }

    buffer[30] = '\0';
    *result = FUNC0(buffer);
    return 0;
}