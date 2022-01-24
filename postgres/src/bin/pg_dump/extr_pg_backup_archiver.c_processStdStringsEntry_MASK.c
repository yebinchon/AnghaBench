#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  defn; } ;
typedef  TYPE_2__ TocEntry ;
struct TYPE_6__ {int std_strings; } ;
struct TYPE_8__ {TYPE_1__ public; } ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC3(ArchiveHandle *AH, TocEntry *te)
{
	/* te->defn should have the form SET standard_conforming_strings = 'x'; */
	char	   *ptr1;

	ptr1 = FUNC1(te->defn, '\'');
	if (ptr1 && FUNC2(ptr1, "'on'", 4) == 0)
		AH->public.std_strings = true;
	else if (ptr1 && FUNC2(ptr1, "'off'", 5) == 0)
		AH->public.std_strings = false;
	else
		FUNC0("invalid STDSTRINGS item: %s",
			  te->defn);
}