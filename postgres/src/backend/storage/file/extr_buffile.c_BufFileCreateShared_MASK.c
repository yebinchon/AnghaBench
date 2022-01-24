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
struct TYPE_5__ {int readOnly; int /*<<< orphan*/ * files; int /*<<< orphan*/  name; int /*<<< orphan*/ * fileset; } ;
typedef  int /*<<< orphan*/  SharedFileSet ;
typedef  int /*<<< orphan*/  File ;
typedef  TYPE_1__ BufFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

BufFile *
FUNC4(SharedFileSet *fileset, const char *name)
{
	BufFile    *file;

	file = FUNC1(1);
	file->fileset = fileset;
	file->name = FUNC3(name);
	file->files = (File *) FUNC2(sizeof(File));
	file->files[0] = FUNC0(file, 0);
	file->readOnly = false;

	return file;
}