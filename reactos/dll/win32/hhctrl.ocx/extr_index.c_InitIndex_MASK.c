#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  szFile; } ;
struct TYPE_12__ {int /*<<< orphan*/  next; int /*<<< orphan*/  merge; scalar_t__ nItems; } ;
struct TYPE_9__ {int /*<<< orphan*/  pszIndex; } ;
struct TYPE_11__ {TYPE_5__* index; TYPE_2__* tabs; TYPE_8__* pCHMInfo; TYPE_1__ WinType; } ;
struct TYPE_10__ {int /*<<< orphan*/  hwnd; } ;
typedef  int /*<<< orphan*/  IndexItem ;
typedef  int /*<<< orphan*/  IStream ;
typedef  TYPE_3__ HHInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t TAB_INDEX ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_5__*) ; 

void FUNC7(HHInfo *info)
{
    IStream *stream;

    info->index = FUNC5(sizeof(IndexItem));
    info->index->nItems = 0;
    FUNC2(&info->index->merge, info->pCHMInfo->szFile, info->WinType.pszIndex);

    stream = FUNC0(info->pCHMInfo, info->pCHMInfo->szFile, &info->index->merge);
    if(!stream) {
        FUNC3("Could not get index stream\n");
        return;
    }

    FUNC6(info, stream, info->index);
    FUNC1(stream);

    FUNC4(info->tabs[TAB_INDEX].hwnd, info->index->next);
}