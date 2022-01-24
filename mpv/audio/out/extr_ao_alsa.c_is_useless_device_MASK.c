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
 int FUNC0 (char**) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static bool FUNC4(char *name)
{
    char *crap[] = {"rear", "center_lfe", "side", "pulse", "null", "dsnoop", "hw"};
    for (int i = 0; i < FUNC0(crap); i++) {
        int l = FUNC2(crap[i]);
        if (name && FUNC3(name, crap[i], l) == 0 &&
            (!name[l] || name[l] == ':'))
            return true;
    }
    // The standard default entry will achieve exactly the same.
    if (name && FUNC1(name, "default") == 0)
        return true;
    return false;
}