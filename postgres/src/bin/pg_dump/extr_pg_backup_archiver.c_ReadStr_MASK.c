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
struct TYPE_5__ {int /*<<< orphan*/  (* ReadBufPtr ) (TYPE_1__*,void*,int) ;} ;
typedef  TYPE_1__ ArchiveHandle ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,int) ; 

char *
FUNC3(ArchiveHandle *AH)
{
	char	   *buf;
	int			l;

	l = FUNC0(AH);
	if (l < 0)
		buf = NULL;
	else
	{
		buf = (char *) FUNC1(l + 1);
		AH->ReadBufPtr(AH, (void *) buf, l);

		buf[l] = '\0';
	}

	return buf;
}