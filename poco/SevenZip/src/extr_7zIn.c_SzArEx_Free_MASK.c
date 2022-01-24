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
struct TYPE_4__ {int /*<<< orphan*/  db; int /*<<< orphan*/  FileNames; int /*<<< orphan*/  FileNameOffsets; int /*<<< orphan*/  FileIndexToFolderIndexMap; int /*<<< orphan*/  FolderStartFileIndex; int /*<<< orphan*/  PackStreamStartPositions; int /*<<< orphan*/  FolderStartPackStreamIndex; } ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  TYPE_1__ CSzArEx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(CSzArEx *p, ISzAlloc *alloc)
{
  FUNC1(alloc, p->FolderStartPackStreamIndex);
  FUNC1(alloc, p->PackStreamStartPositions);
  FUNC1(alloc, p->FolderStartFileIndex);
  FUNC1(alloc, p->FileIndexToFolderIndexMap);

  FUNC1(alloc, p->FileNameOffsets);
  FUNC0(&p->FileNames, alloc);

  FUNC3(&p->db, alloc);
  FUNC2(p);
}