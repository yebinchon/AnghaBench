#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* pg_locale_t ;
struct TYPE_4__ {int /*<<< orphan*/  lt; } ;
struct TYPE_5__ {TYPE_1__ info; } ;

/* Variables and functions */
 char FUNC0 (unsigned char) ; 
 char FUNC1 (unsigned char) ; 
 char FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char
FUNC3(unsigned char c, pg_locale_t locale, bool locale_is_c)
{
	if (locale_is_c)
		return FUNC0(c);
#ifdef HAVE_LOCALE_T
	else if (locale)
		return tolower_l(c, locale->info.lt);
#endif
	else
		return FUNC1(c);
}