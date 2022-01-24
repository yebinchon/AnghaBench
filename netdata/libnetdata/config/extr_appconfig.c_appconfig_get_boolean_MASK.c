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
struct config {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct config*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

int FUNC2(struct config *root, const char *section, const char *name, int value)
{
    char *s;
    if(value) s = "yes";
    else s = "no";

    s = FUNC0(root, section, name, s);
    if(!s) return value;

    if(!FUNC1(s, "yes") || !FUNC1(s, "true") || !FUNC1(s, "on") || !FUNC1(s, "auto") || !FUNC1(s, "on demand")) return 1;
    return 0;
}