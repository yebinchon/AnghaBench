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
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (void*,char*,char*) ; 
 char* FUNC3 (void*,char const*) ; 

__attribute__((used)) static char *FUNC4(void *talloc_ctx, const char *fname)
{
    fname = FUNC0(fname);
    if (fname[0] == '@')
        fname += 1;
    char *name = FUNC3(talloc_ctx, fname);
    // Drop file extension
    char *dot = FUNC1(name, '.');
    if (dot)
        *dot = '\0';
    // Turn it into a safe identifier - this is used with e.g. dispatching
    // input via: "send scriptname ..."
    for (int n = 0; name[n]; n++) {
        char c = name[n];
        if (!(c >= 'A' && c <= 'Z') && !(c >= 'a' && c <= 'z') &&
            !(c >= '0' && c <= '9'))
            name[n] = '_';
    }
    return FUNC2(talloc_ctx, "%s", name);
}