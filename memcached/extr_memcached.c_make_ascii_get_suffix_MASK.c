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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  item ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline int FUNC5(char *suffix, item *it, bool return_cas, int nbytes) {
    char *p = suffix;
    *p = ' ';
    p++;
    if (FUNC0(it) == 0) {
        *p = '0';
        p++;
    } else {
        p = FUNC3(*((uint32_t *) FUNC2(it)), p);
    }
    *p = ' ';
    p = FUNC3(nbytes-2, p+1);

    if (return_cas) {
        *p = ' ';
        p = FUNC4(FUNC1(it), p+1);
    }

    *p = '\r';
    *(p+1) = '\n';
    *(p+2) = '\0';
    return (p - suffix) + 2;
}