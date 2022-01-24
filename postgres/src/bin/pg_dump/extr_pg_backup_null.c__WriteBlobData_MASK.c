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
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char const*,size_t,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(ArchiveHandle *AH, const void *data, size_t dLen)
{
	if (dLen > 0)
	{
		PQExpBuffer buf = FUNC2();

		FUNC1(buf,
							  (const unsigned char *) data,
							  dLen,
							  AH);

		FUNC0(AH, "SELECT pg_catalog.lowrite(0, %s);\n", buf->data);

		FUNC3(buf);
	}
	return;
}