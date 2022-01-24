#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int numatts; char** attnames; int* attisdropped; char* attgenerated; } ;
typedef  TYPE_1__ TableInfo ;
struct TYPE_8__ {char const* data; } ;
typedef  TYPE_2__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static const char *
FUNC3(const TableInfo *ti, PQExpBuffer buffer)
{
	int			numatts = ti->numatts;
	char	  **attnames = ti->attnames;
	bool	   *attisdropped = ti->attisdropped;
	char	   *attgenerated = ti->attgenerated;
	bool		needComma;
	int			i;

	FUNC0(buffer, '(');
	needComma = false;
	for (i = 0; i < numatts; i++)
	{
		if (attisdropped[i])
			continue;
		if (attgenerated[i])
			continue;
		if (needComma)
			FUNC1(buffer, ", ");
		FUNC1(buffer, FUNC2(attnames[i]));
		needComma = true;
	}

	if (!needComma)
		return "";				/* no undropped columns */

	FUNC0(buffer, ')');
	return buffer->data;
}