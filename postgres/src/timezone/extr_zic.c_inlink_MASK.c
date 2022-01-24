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
struct link {void* l_to; void* l_from; int /*<<< orphan*/  l_linenum; int /*<<< orphan*/  l_filename; } ;

/* Variables and functions */
 size_t LF_FROM ; 
 size_t LF_TO ; 
 int LINK_FIELDS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 struct link* FUNC3 (struct link*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  linenum ; 
 struct link* links ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  nlinks ; 
 int /*<<< orphan*/  nlinks_alloc ; 

__attribute__((used)) static void
FUNC5(char **fields, int nfields)
{
	struct link l;

	if (nfields != LINK_FIELDS)
	{
		FUNC2(FUNC0("wrong number of fields on Link line"));
		return;
	}
	if (*fields[LF_FROM] == '\0')
	{
		FUNC2(FUNC0("blank FROM field on Link line"));
		return;
	}
	if (!FUNC4(fields[LF_TO]))
		return;
	l.l_filename = filename;
	l.l_linenum = linenum;
	l.l_from = FUNC1(fields[LF_FROM]);
	l.l_to = FUNC1(fields[LF_TO]);
	links = FUNC3(links, sizeof *links, nlinks, &nlinks_alloc);
	links[nlinks++] = l;
}