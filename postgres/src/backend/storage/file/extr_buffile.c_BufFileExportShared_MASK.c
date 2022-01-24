#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int readOnly; int /*<<< orphan*/ * fileset; } ;
typedef  TYPE_1__ BufFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(BufFile *file)
{
	/* Must be a file belonging to a SharedFileSet. */
	FUNC0(file->fileset != NULL);

	/* It's probably a bug if someone calls this twice. */
	FUNC0(!file->readOnly);

	FUNC1(file);
	file->readOnly = true;
}