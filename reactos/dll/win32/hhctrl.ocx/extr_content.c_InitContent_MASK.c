#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  insert_type_t ;
struct TYPE_15__ {int /*<<< orphan*/  child; int /*<<< orphan*/  merge; } ;
struct TYPE_12__ {int /*<<< orphan*/  pszToc; } ;
struct TYPE_14__ {TYPE_4__* content; TYPE_2__* tabs; TYPE_10__* pCHMInfo; TYPE_1__ WinType; } ;
struct TYPE_13__ {int /*<<< orphan*/  hwnd; } ;
struct TYPE_11__ {int /*<<< orphan*/  szFile; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  TYPE_3__ HHInfo ;
typedef  int /*<<< orphan*/  ContentItem ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t TAB_CONTENTS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 

void FUNC8(HHInfo *info)
{
    IStream *stream;
    insert_type_t insert_type;

    info->content = FUNC5(sizeof(ContentItem));
    FUNC2(&info->content->merge, info->pCHMInfo->szFile, info->WinType.pszToc);

    stream = FUNC0(info->pCHMInfo, info->pCHMInfo->szFile, &info->content->merge);
    if(!stream) {
        FUNC3("Could not get content stream\n");
        return;
    }

    info->content->child = FUNC6(info, stream, info->content, &insert_type);
    FUNC1(stream);

    FUNC7(NULL, info->content);
    FUNC4(info->tabs[TAB_CONTENTS].hwnd, NULL, info->content);
}