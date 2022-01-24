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
 int /*<<< orphan*/  keymap ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char const*,int) ; 

__attribute__((used)) static int FUNC2(int key)
{
    const char *passthrough_keys = " -+*/<>`~!@#$%^&()_{}:;\"\',.?\\|=[]";

    int mpkey = 0;
    if ((key >= 'a' && key <= 'z') || (key >= 'A' && key <= 'Z') ||
        (key >= '0' && key <= '9') ||
        (key >  0   && key <  256 && FUNC1(passthrough_keys, key)))
        mpkey = key;

    if (!mpkey)
        mpkey = FUNC0(keymap, key);

    return mpkey;
}