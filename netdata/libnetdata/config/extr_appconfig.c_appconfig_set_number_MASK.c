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
 int /*<<< orphan*/  FUNC0 (struct config*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long long) ; 

long long FUNC2(struct config *root, const char *section, const char *name, long long value)
{
    char buffer[100];
    FUNC1(buffer, "%lld", value);

    FUNC0(root, section, name, buffer);

    return value;
}