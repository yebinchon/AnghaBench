
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const TREEVIEW_ITEM ;
typedef int TREEVIEW_INFO ;
typedef int LONG ;


 int const* TREEVIEW_GetNextListItem (int const*,int const*) ;
 int const* TREEVIEW_GetPrevListItem (int const*,int const*) ;
 int assert (int ) ;

__attribute__((used)) static TREEVIEW_ITEM *
TREEVIEW_GetListItem(const TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *item,
       LONG count)
{
    TREEVIEW_ITEM *(*next_item)(const TREEVIEW_INFO *, const TREEVIEW_ITEM *);
    TREEVIEW_ITEM *previousItem;

    assert(item != ((void*)0));

    if (count > 0)
    {
 next_item = TREEVIEW_GetNextListItem;
    }
    else if (count < 0)
    {
 count = -count;
 next_item = TREEVIEW_GetPrevListItem;
    }
    else
 return item;

    do
    {
 previousItem = item;
 item = next_item(infoPtr, item);

    } while (--count && item != ((void*)0));


    return item ? item : previousItem;
}
