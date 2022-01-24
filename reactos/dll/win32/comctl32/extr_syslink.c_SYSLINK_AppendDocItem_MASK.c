#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_8__ {size_t nText; int /*<<< orphan*/  entry; int /*<<< orphan*/  Text; int /*<<< orphan*/ * Blocks; int /*<<< orphan*/  Type; } ;
struct TYPE_7__ {int /*<<< orphan*/  Items; } ;
typedef  TYPE_1__ SYSLINK_INFO ;
typedef  int /*<<< orphan*/  SL_ITEM_TYPE ;
typedef  TYPE_2__* PDOC_ITEM ;
typedef  int /*<<< orphan*/ * LPCWSTR ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOC_ITEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PDOC_ITEM FUNC8 (SYSLINK_INFO *infoPtr, LPCWSTR Text, UINT textlen,
                                        SL_ITEM_TYPE type, PDOC_ITEM LastItem)
{
    PDOC_ITEM Item;

    textlen = FUNC6(textlen, FUNC7(Text));
    Item = FUNC0(FUNC2(DOC_ITEM, Text[textlen + 1]));
    if(Item == NULL)
    {
        FUNC1("Failed to alloc DOC_ITEM structure!\n");
        return NULL;
    }

    Item->nText = textlen;
    Item->Type = type;
    Item->Blocks = NULL;
    FUNC5(Item->Text, Text, textlen + 1);
    if (LastItem)
        FUNC3(&LastItem->entry, &Item->entry);
    else
        FUNC4(&infoPtr->Items, &Item->entry);

    return Item;
}