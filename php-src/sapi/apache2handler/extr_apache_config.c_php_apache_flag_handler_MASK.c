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
typedef  int /*<<< orphan*/  cmd_parms ;

/* Variables and functions */
 int /*<<< orphan*/  PHP_INI_PERDIR ; 
 char const* FUNC0 (int /*<<< orphan*/ *,void*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC1(cmd_parms *cmd, void *dummy, const char *name, const char *value)
{
	return FUNC0(cmd, dummy, name, value, PHP_INI_PERDIR);
}