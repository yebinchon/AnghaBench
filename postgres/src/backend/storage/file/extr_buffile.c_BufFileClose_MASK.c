#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int numFiles; struct TYPE_6__* files; } ;
typedef  TYPE_1__ BufFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(BufFile *file)
{
	int			i;

	/* flush any unwritten data */
	FUNC0(file);
	/* close and delete the underlying file(s) */
	for (i = 0; i < file->numFiles; i++)
		FUNC1(file->files[i]);
	/* release the buffer space */
	FUNC2(file->files);
	FUNC2(file);
}