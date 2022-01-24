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
 char* FUNC0 (char*) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC4(const char *name) {

    const char *ini_names, *p, *next;
    /* php_printf("Loading redis array with name=[%s]\n", name); */

    ini_names = FUNC0("redis.arrays.names");
    for(p = ini_names; p;) {
        next = FUNC1(p, ',');
        if(next) {
            if(FUNC3(p, name, next - p) == 0) {
                return 1;
            }
        } else {
            if(FUNC2(p, name) == 0) {
                return 1;
            }
            break;
        }
        p = next + 1;
    }

    return 0;
}