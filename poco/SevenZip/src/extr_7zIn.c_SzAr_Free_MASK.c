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
typedef  size_t UInt32 ;
struct TYPE_4__ {size_t NumFolders; int /*<<< orphan*/ * Files; int /*<<< orphan*/ * Folders; int /*<<< orphan*/ * PackCRCs; int /*<<< orphan*/ * PackCRCsDefined; int /*<<< orphan*/ * PackSizes; } ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  TYPE_1__ CSzAr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(CSzAr *p, ISzAlloc *alloc)
{
  UInt32 i;
  if (p->Folders)
    for (i = 0; i < p->NumFolders; i++)
      FUNC2(&p->Folders[i], alloc);

  FUNC0(alloc, p->PackSizes);
  FUNC0(alloc, p->PackCRCsDefined);
  FUNC0(alloc, p->PackCRCs);
  FUNC0(alloc, p->Folders);
  FUNC0(alloc, p->Files);
  FUNC1(p);
}