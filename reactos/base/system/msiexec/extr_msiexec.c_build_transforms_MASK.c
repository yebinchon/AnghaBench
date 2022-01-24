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
struct string_list {struct string_list* next; int /*<<< orphan*/  str; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__* LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPWSTR FUNC4(struct string_list *transform_list)
{
	struct string_list *list;
	LPWSTR ret, p;
	DWORD len;

	/* count the space we need */
	len = 1;
	for(list = transform_list; list; list = list->next)
		len += FUNC3(list->str) + 1;

	ret = FUNC1( FUNC0(), 0, len*sizeof(WCHAR) );

	/* add all the transforms with a semicolon between each one */
	p = ret;
	for(list = transform_list; list; list = list->next)
	{
		len = FUNC3(list->str);
		FUNC2(p, list->str, len );
		p += len;
		if(list->next)
			*p++ = ';';
	}
	*p = 0;

	return ret;
}