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
struct TYPE_5__ {int /*<<< orphan*/  (* WriteBufPtr ) (TYPE_1__*,char const*,int) ;} ;
typedef  TYPE_1__ ArchiveHandle ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int) ; 

size_t
FUNC3(ArchiveHandle *AH, const char *c)
{
	size_t		res;

	if (c)
	{
		int			len = FUNC1(c);

		res = FUNC0(AH, len);
		AH->WriteBufPtr(AH, c, len);
		res += len;
	}
	else
		res = FUNC0(AH, -1);

	return res;
}