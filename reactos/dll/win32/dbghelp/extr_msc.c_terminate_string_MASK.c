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
struct p_string {size_t namelen; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static const char* FUNC2(const struct p_string* p_name)
{
    static char symname[256];

    FUNC0(symname, p_name->name, p_name->namelen);
    symname[p_name->namelen] = '\0';

    return (!*symname || FUNC1(symname, "__unnamed") == 0) ? NULL : symname;
}