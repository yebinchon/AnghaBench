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
typedef  int /*<<< orphan*/  calculated_number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char**) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(const char **string, calculated_number *number) {
    char *end = NULL;
    calculated_number n = FUNC0(*string, &end);
    if(FUNC1(!end || *string == end)) {
        *number = 0;
        return 0;
    }
    *number = n;
    *string = end;
    return 1;
}