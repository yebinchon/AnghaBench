
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int sub_items; int id; } ;
typedef TYPE_1__ customctrl ;
struct TYPE_11__ {int cdcstate; int entry; int * hwnd; struct TYPE_11__* label; int parent_id; int id; } ;
typedef TYPE_2__ cctrl_item ;
typedef int WCHAR ;
typedef TYPE_2__* LPWSTR ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef int DWORD ;


 int CDCS_ENABLED ;
 int CDCS_VISIBLE ;
 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int S_OK ;
 scalar_t__ get_item (TYPE_1__*,int ,int ,int *) ;
 int list_add_tail (int *,int *) ;
 int lstrcpyW (TYPE_2__*,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static HRESULT add_item(customctrl* parent, DWORD itemid, LPCWSTR label, cctrl_item** result)
{
    cctrl_item* item;
    LPWSTR label_copy;

    if (get_item(parent, itemid, 0, ((void*)0)))
        return E_INVALIDARG;

    item = HeapAlloc(GetProcessHeap(), 0, sizeof(*item));
    label_copy = HeapAlloc(GetProcessHeap(), 0, (lstrlenW(label)+1)*sizeof(WCHAR));

    if (!item || !label_copy)
    {
        HeapFree(GetProcessHeap(), 0, item);
        HeapFree(GetProcessHeap(), 0, label_copy);
        return E_OUTOFMEMORY;
    }

    item->id = itemid;
    item->parent_id = parent->id;
    lstrcpyW(label_copy, label);
    item->label = label_copy;
    item->cdcstate = CDCS_VISIBLE|CDCS_ENABLED;
    item->hwnd = ((void*)0);
    list_add_tail(&parent->sub_items, &item->entry);

    *result = item;

    return S_OK;
}
