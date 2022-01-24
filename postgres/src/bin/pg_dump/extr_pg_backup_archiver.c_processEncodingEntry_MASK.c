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
struct TYPE_7__ {char* defn; } ;
typedef  TYPE_2__ TocEntry ;
struct TYPE_6__ {int encoding; } ;
struct TYPE_8__ {TYPE_1__ public; } ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static void
FUNC5(ArchiveHandle *AH, TocEntry *te)
{
	/* te->defn should have the form SET client_encoding = 'foo'; */
	char	   *defn = FUNC3(te->defn);
	char	   *ptr1;
	char	   *ptr2 = NULL;
	int			encoding;

	ptr1 = FUNC4(defn, '\'');
	if (ptr1)
		ptr2 = FUNC4(++ptr1, '\'');
	if (ptr2)
	{
		*ptr2 = '\0';
		encoding = FUNC2(ptr1);
		if (encoding < 0)
			FUNC0("unrecognized encoding \"%s\"",
				  ptr1);
		AH->public.encoding = encoding;
	}
	else
		FUNC0("invalid ENCODING item: %s",
			  te->defn);

	FUNC1(defn);
}