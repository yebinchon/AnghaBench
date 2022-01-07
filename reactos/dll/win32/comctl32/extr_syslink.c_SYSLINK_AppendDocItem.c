
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {size_t nText; int entry; int Text; int * Blocks; int Type; } ;
struct TYPE_7__ {int Items; } ;
typedef TYPE_1__ SYSLINK_INFO ;
typedef int SL_ITEM_TYPE ;
typedef TYPE_2__* PDOC_ITEM ;
typedef int * LPCWSTR ;


 TYPE_2__* Alloc (int ) ;
 int DOC_ITEM ;
 int ERR (char*) ;
 int FIELD_OFFSET (int ,int ) ;
 int list_add_after (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int lstrcpynW (int ,int *,size_t) ;
 size_t min (size_t,int ) ;
 int strlenW (int *) ;

__attribute__((used)) static PDOC_ITEM SYSLINK_AppendDocItem (SYSLINK_INFO *infoPtr, LPCWSTR Text, UINT textlen,
                                        SL_ITEM_TYPE type, PDOC_ITEM LastItem)
{
    PDOC_ITEM Item;

    textlen = min(textlen, strlenW(Text));
    Item = Alloc(FIELD_OFFSET(DOC_ITEM, Text[textlen + 1]));
    if(Item == ((void*)0))
    {
        ERR("Failed to alloc DOC_ITEM structure!\n");
        return ((void*)0);
    }

    Item->nText = textlen;
    Item->Type = type;
    Item->Blocks = ((void*)0);
    lstrcpynW(Item->Text, Text, textlen + 1);
    if (LastItem)
        list_add_after(&LastItem->entry, &Item->entry);
    else
        list_add_tail(&infoPtr->Items, &Item->entry);

    return Item;
}
