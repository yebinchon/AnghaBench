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
 scalar_t__ FUNC0 (char const) ; 

__attribute__((used)) static inline int FUNC1(const char **string) {
    const char *s = *string;

    // ==
    if(s[0] == '=' && s[1] == '=' && FUNC0(s[2])) {
        *string = &s[2];
        return 1;
    }

    // =
    if(s[0] == '=' && FUNC0(s[1])) {
        *string = &s[1];
        return 1;
    }

    return 0;
}