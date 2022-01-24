#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct config_enum_entry {char const* name; int /*<<< orphan*/  hidden; } ;
struct config_enum {struct config_enum_entry* options; } ;
struct TYPE_5__ {int len; char* data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(struct config_enum *record, const char *prefix,
						const char *suffix, const char *separator)
{
	const struct config_enum_entry *entry;
	StringInfoData retstr;
	int			seplen;

	FUNC2(&retstr);
	FUNC1(&retstr, prefix);

	seplen = FUNC3(separator);
	for (entry = record->options; entry && entry->name; entry++)
	{
		if (!entry->hidden)
		{
			FUNC1(&retstr, entry->name);
			FUNC0(&retstr, separator, seplen);
		}
	}

	/*
	 * All the entries may have been hidden, leaving the string empty if no
	 * prefix was given. This indicates a broken GUC setup, since there is no
	 * use for an enum without any values, so we just check to make sure we
	 * don't write to invalid memory instead of actually trying to do
	 * something smart with it.
	 */
	if (retstr.len >= seplen)
	{
		/* Replace final separator */
		retstr.data[retstr.len - seplen] = '\0';
		retstr.len -= seplen;
	}

	FUNC1(&retstr, suffix);

	return retstr.data;
}