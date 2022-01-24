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
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline char *FUNC3(const char *matched, size_t matched_size, char *wildcarded, size_t *wildcarded_size) {
    //if(matched_size) {
    //    char buf[matched_size + 1];
    //    strncpyz(buf, matched, matched_size);
    //    fprintf(stderr, "ADD WILDCARDED '%s' of length %zu\n", buf, matched_size);
    //}

    if(FUNC2(wildcarded && *wildcarded_size && matched && *matched && matched_size)) {
        size_t wss = *wildcarded_size - 1;
        size_t len = (matched_size < wss)?matched_size:wss;
        if(FUNC0(len)) {
            FUNC1(wildcarded, matched, len);

            *wildcarded_size -= len;
            return &wildcarded[len];
        }
    }

    return wildcarded;
}