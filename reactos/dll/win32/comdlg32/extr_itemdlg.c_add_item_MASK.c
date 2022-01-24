#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  sub_items; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ customctrl ;
struct TYPE_11__ {int cdcstate; int /*<<< orphan*/  entry; int /*<<< orphan*/ * hwnd; struct TYPE_11__* label; int /*<<< orphan*/  parent_id; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ cctrl_item ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  TYPE_2__* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int CDCS_ENABLED ; 
 int CDCS_VISIBLE ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC7(customctrl* parent, DWORD itemid, LPCWSTR label, cctrl_item** result)
{
    cctrl_item* item;
    LPWSTR label_copy;

    if (FUNC3(parent, itemid, 0, NULL))
        return E_INVALIDARG;

    item = FUNC1(FUNC0(), 0, sizeof(*item));
    label_copy = FUNC1(FUNC0(), 0, (FUNC6(label)+1)*sizeof(WCHAR));

    if (!item || !label_copy)
    {
        FUNC2(FUNC0(), 0, item);
        FUNC2(FUNC0(), 0, label_copy);
        return E_OUTOFMEMORY;
    }

    item->id = itemid;
    item->parent_id = parent->id;
    FUNC5(label_copy, label);
    item->label = label_copy;
    item->cdcstate = CDCS_VISIBLE|CDCS_ENABLED;
    item->hwnd = NULL;
    FUNC4(&parent->sub_items, &item->entry);

    *result = item;

    return S_OK;
}